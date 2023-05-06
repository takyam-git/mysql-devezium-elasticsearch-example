CREATE TABLE IF NOT EXISTS `owners`
(
    `id`   BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `products`
(
    `id`       BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `owner_id` BIGINT UNSIGNED NOT NULL,
    `name`     VARCHAR(255)    NOT NULL,
    FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`)
);

CREATE TABLE IF NOT EXISTS `storage_locations`
(
    `id`       BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `owner_id` BIGINT UNSIGNED NOT NULL,
    `name`     VARCHAR(255)    NOT NULL,
    FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`)
);

CREATE TABLE IF NOT EXISTS `product_inventories`
(
    `id`                  BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `storage_location_id` BIGINT UNSIGNED NOT NULL,
    `product_id`          BIGINT UNSIGNED NOT NULL,
    `inventory_quantity`  BIGINT          NOT NULL,
    UNIQUE KEY (`storage_location_id`, `product_id`),
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
    FOREIGN KEY (`storage_location_id`) REFERENCES `storage_locations` (`id`)
);
