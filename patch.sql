CREATE TABLE `prefix_userfeed_subscribe` (
  `user_id` int(11) NOT NULL,
  `subscribe_type` tinyint(4) NOT NULL,
  `target_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `prefix_stream_subscribe` (
    `user_id` int(11) NOT NULL,
    `target_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `prefix_stream_config` (
    `user_id` int(11) NOT NULL,
    `event_types` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `prefix_stream_event` (
    `id` int(11) NOT NULL primary key auto_increment,
    `event_type` tinyint(3) NOT NULL,
    `target_id` int(11) NOT NULL,
    `initiator` int(11) NOT NULL,
    `date_added` timestamp not null default current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `prefix_user_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `prefixc_user_field_value` (
  `user_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;