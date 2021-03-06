--
-- Tabella delle e.mail
--
CREATE TABLE IF NOT EXISTS emails (
  id INTEGER NOT NULL AUTO_INCREMENT,
  sol_id INTEGER NOT NULL,
  pol_id INTEGER NOT NULL,
  source_id INTEGER NOT NULL,
  capture_date TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  data_size INTEGER COMMENT 'Dimensioni in Kb',
  first_visualization_user_id INTEGER NOT NULL DEFAULT '0' COMMENT 'Id utente',
  flow_info VARCHAR( 255 ) NOT NULL COMMENT 'XML file of flow',
  receive BOOL DEFAULT FALSE COMMENT 'FALSE=sended TRUE=received',
  relevance INTEGER,
  comments VARCHAR( 1024 ),
  username VARCHAR( 40 ),
  password VARCHAR( 40 ),
  sender VARCHAR( 80 ),
  receivers VARCHAR( 1024 ),
  subject VARCHAR( 1024 ),
  mime_path VARCHAR( 255 ) COMMENT 'MIME file',
  attach_dir VARCHAR( 255 ),
  parts VARCHAR( 80 ) DEFAULT 'ALL',
  PRIMARY KEY (id),
  FOREIGN KEY (pol_id) REFERENCES pols(id) ON DELETE CASCADE,
  FOREIGN KEY (sol_id) REFERENCES sols(id) ON DELETE CASCADE,
  FOREIGN KEY (source_id) REFERENCES sources(id) ON DELETE CASCADE
) TYPE = MYISAM ;
