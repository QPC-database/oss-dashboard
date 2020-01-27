DROP TABLE IF EXISTS organization;

-- This is based on everything in the response
CREATE TABLE organization (
  login VARCHAR,
  id INTEGER,
  url VARCHAR,
  avatar_url VARCHAR,
  description VARCHAR,
  name VARCHAR,
  company VARCHAR,
  blog VARCHAR,
  location VARCHAR,
  email VARCHAR,
  public_repos INTEGER,
  public_gists INTEGER,
  followers INTEGER,
  following INTEGER,
  html_url VARCHAR,
  created_at TIMESTAMP,
  type VARCHAR
);

DROP TABLE IF EXISTS repository;

CREATE TABLE repository (
  id INTEGER,
  org VARCHAR,
  name VARCHAR,
  homepage VARCHAR,
  fork BOOLEAN,
  private BOOLEAN,
  has_wiki BOOLEAN,
  language VARCHAR,
  stars INTEGER,
  watchers INTEGER,
  forks INTEGER,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  pushed_at TIMESTAMP,
  archived BOOLEAN,
  disabled BOOLEAN,
  size INTEGER,
  description VARCHAR
);

DROP TABLE IF EXISTS team;

CREATE TABLE team (
  id INTEGER,
  org VARCHAR,
  name VARCHAR,
  slug VARCHAR,
  description VARCHAR
);

DROP TABLE IF EXISTS team_to_repository;

CREATE TABLE team_to_repository (
  team_id INTEGER,
  repository_id INTEGER
);

DROP TABLE IF EXISTS member;

CREATE TABLE member (
  id INTEGER,
  login VARCHAR,
  name VARCHAR,
  avatar_url VARCHAR,
  company VARCHAR,
  email VARCHAR
);

DROP TABLE IF EXISTS team_to_member;

CREATE TABLE team_to_member (
  team_id INTEGER,
  member_id INTEGER
);

DROP TABLE IF EXISTS organization_to_member;

CREATE TABLE organization_to_member (
  org_id INTEGER,
  member_id INTEGER
);

DROP TABLE IF EXISTS repository_to_member;

-- This is a Collaborator
CREATE TABLE repository_to_member (
  org_id INTEGER,
  repo_id INTEGER,
  member_id INTEGER
);
