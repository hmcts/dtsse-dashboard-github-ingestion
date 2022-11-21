
CREATE SCHEMA IF NOT EXISTS snow;

CREATE TABLE snow.incident (
  id VARCHAR(255) NOT NULL,
  team VARCHAR(255) NULL,
  title VARCHAR(255) NOT NULL,
  assignee VARCHAR(255) NULL,
  priority VARCHAR(255) NOT NULL,
  urgency VARCHAR(255) NOT NULL,
  impact VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  created TIMESTAMP NOT NULL,
  updated TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);