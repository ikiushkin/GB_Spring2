INSERT INTO `products` (`title`, `price`)
    VALUE
    ('Bread', 60),
    ('Milk', 100),
    ('Cheese', 300),
    ('Chocolate', 120),
    ('Coffee', 350),
    ('Printer', 5300),
    ('Fridge', 11500),
    ('Book', 200),
    ('Laptop', 300),
    ('Table', 1100);
GO

INSERT INTO `categories` (`name`)
    VALUE ('Appliances'), ('Computer_equipment'), ('Food_products'), ('Furniture'), ('Books');
GO

INSERT INTO `product_categories`(`product_id`, `category_id`)
SELECT (SELECT id FROM `products` WHERE `title` = 'Bread'), (SELECT id FROM `categories` WHERE `name` = 'Food_products')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Milk'), (SELECT id FROM `categories` WHERE `name` = 'Food_products')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Cheese'), (SELECT id FROM `categories` WHERE `name` = 'Food_products')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Chocolate'), (SELECT id FROM `categories` WHERE `name` = 'Food_products')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Coffee'), (SELECT id FROM `categories` WHERE `name` = 'Food_products')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Printer'), (SELECT id FROM `categories` WHERE `name` = 'Computer_equipment')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Fridge'), (SELECT id FROM `categories` WHERE `name` = 'Appliances')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Book'), (SELECT id FROM `categories` WHERE `name` = 'Books')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Laptop'), (SELECT id FROM `categories` WHERE `name` = 'Computer_equipment')
UNION ALL
SELECT (SELECT id FROM `products` WHERE `title` = 'Table'), (SELECT id FROM `categories` WHERE `name` = 'Furniture');
GO