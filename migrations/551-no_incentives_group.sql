-- Make No Incentives group.
SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'No Reviewer Incentives', 'None:None', 'Reviewers who should not be included in incentives tables', NOW(), NOW());
