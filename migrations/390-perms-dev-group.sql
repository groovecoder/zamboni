
SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Developers', 'AdminTools:View', '', NOW(), NOW());
-- Copy current users in Developers Credits into this group.
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.id=(SELECT id FROM groups where name = 'Developers Credits'));
