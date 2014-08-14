ALTER TABLE `mkt_feed_collection_membership`
    DROP FOREIGN KEY `mkt_feed_collection_membership_group_id`;

ALTER TABLE `mkt_feed_collection_membership`
    CHANGE `group_id` `group` int(11) UNSIGNED NULL UNIQUE;

ALTER TABLE `mkt_feed_collection_membership`
    ADD FOREIGN KEY (`group`) REFERENCES `translations` (`id`);
