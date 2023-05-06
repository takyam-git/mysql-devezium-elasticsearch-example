INSERT INTO `owners` (`id`, `name`)
VALUES (1, 'HOGE株式会社'),
       (2, 'FUGAカンパニー');

INSERT INTO `products` (`id`, `owner_id`, `name`)
VALUES (1, 1, 'HOGE商品A'),
       (2, 1, 'HOGE商品B'),
       (3, 1, 'HOGE商品C'),
       (4, 2, 'FUGA商品A'),
       (5, 2, 'FUGA商品B'),
       (6, 2, 'FUGA商品C');

INSERT INTO `storage_locations` (`id`, `owner_id`, `name`)
VALUES (1, 1, 'HOGE本社'),
       (2, 1, 'HOGE倉庫'),
       (3, 2, 'FUGA本社'),
       (4, 2, 'FUGA倉庫');


INSERT INTO `product_inventories` (`id`, `storage_location_id`, `product_id`, `inventory_quantity`)
VALUES (1, 1, 1, 39),
       (2, 1, 2, 2),
       (3, 1, 3, 0),
       (4, 2, 1, 23),
       (5, 2, 2, 189),
       (6, 2, 3, 81),
       (7, 3, 4, 1),
       (8, 3, 5, 321),
       (9, 3, 6, 51),
       (10, 4, 4, 62),
       (11, 4, 5, 19),
       (12, 4, 6, 1081);