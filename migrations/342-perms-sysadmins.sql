SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'System Administrators', 'None:None',
   'Preserved through permissions migration for future use.', NOW(), NOW());
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.name='sysadmins' AND groups.id < 50000);
