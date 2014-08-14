SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Add-on Reviewer MOTD', 'AddonReviewerMOTD:Edit', '', NOW(), NOW());

SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'App Reviewer MOTD', 'AppReviewerMOTD:Edit', '', NOW(), NOW());

SELECT @available_group_id := MAX(id)+1 FROM groups;

INSERT INTO groups (id, name, rules, notes, created, modified) VALUES
  (@available_group_id, 'Persona Reviewer MOTD', 'PersonaReviewerMOTD:Edit', '', NOW(), NOW());
