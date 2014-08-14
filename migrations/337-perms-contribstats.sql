UPDATE groups SET name=CONCAT(name, ' (OLD)') WHERE name='Contributions Stats Viewers';

SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Contribution Stats Viewers', 'ContributionStats:View', '', NOW(), NOW());
INSERT INTO groups_users (
  SELECT NULL, @available_group_id, groups_users.user_id FROM groups, groups_users
  WHERE groups.id=groups_users.group_id AND groups.name='Contributions Stats Viewers' AND groups.id < 50000);
