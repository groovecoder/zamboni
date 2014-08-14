SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Developers Credits', 'None:None', '', NOW(), NOW());
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.name='Developers' AND groups.id < 50000);

SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Past Developers Credits', 'None:None', '', NOW(), NOW());
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.name='Past Developers' AND groups.id < 50000);

SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Other Contributors Credits', 'None:None', '', NOW(), NOW());
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.name='Other Contributors' AND groups.id < 50000);

SELECT @available_group_id := MAX(id)+1 FROM groups;

UPDATE groups SET name=CONCAT(name, ' (OLD)') WHERE name='QA';
INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'QA', 'None:None', '', NOW(), NOW());
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.name='QA (OLD)' AND groups.id < 50000);
