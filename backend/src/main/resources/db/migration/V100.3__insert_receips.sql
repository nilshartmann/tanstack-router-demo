-- Inserting into the recipes table
INSERT INTO recipes (id,
                     user_id,
                     created_at,
                     updated_at,
                     title,
                     headline,
                     preparation_time,
                     cook_time,
                     meal_type_id,
                     steps)
VALUES (1,
        1,
        '2023-02-25 00:00:00',
        '2023-02-25 00:00:00',
        'Veggie Soup',
        'A warming veggie soup for the soul.',
        15,
        30,
        2,
        '1. Start by chopping the vegetables.\n2. Heat oil in a pot and sauté onion, garlic.\n3. Add all the veggies into the pot with water. Cook for 20 minutes.\n4. Add seasoning and serve hot.');

-- category_ids are picked randomly.
INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (1, 1),
       (1, 3),
       (1, 8);

-- Inserting into the ingredients table
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (1, 'Carrots', 2.0, 'Pieces', 1),
       (1, 'Celery', 3.0, 'Stalks', 2),
       (1, 'Onion', 1.0, 'Piece', 3),
       (1, 'Garlic', 3.0, 'Cloves', 4),
       (1, 'Tomatoes', 2.0, 'Pieces', 5);

-- --------------------------------------------------------
--
-- --------------------------------------------------------
-- Inserting into the recipes table
INSERT INTO recipes (id,
                     user_id,
                     created_at,
                     updated_at,
                     title,
                     headline,
                     preparation_time,
                     cook_time,
                     meal_type_id,
                     steps)
VALUES (2,
        3,
        '2023-03-10 00:00:00',
        '2023-03-10 00:00:00',
        'Spaghetti Carbonara',
        'An Italian classic that everyone loves.',
        20,
        30,
        2,
        '1. Cook your spaghetti in boiling water.\n2. In another pan, cook pancetta or guanciale.\n3. Beat the eggs in a bowl, and add cheese.\n4. Mix pasta with the meat, and then with the egg mixture.\n5. Serve hot.');

-- category_ids are picked randomly.
INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (2, 2),
       (2, 5),
       (2, 10);

-- Inserting into the ingredients table
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (2, 'Spaghetti', 200.0, 'Grams', 1),
       (2, 'Pancetta or Guanciale', 100.0, 'Grams', 2),
       (2, 'Eggs', 2.0, 'Pieces', 3),
       (2, 'Pecorino Cheese', 50.0, 'Grams', 4),
       (2, 'Black Pepper', 1.0, 'Tsp', 5);

-- --------------------------------------------------------
--
-- --------------------------------------------------------

-- 3rd Recipe
INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (3, 2, '2023-03-15 00:00:00', '2023-03-15 00:00:00', 'Grilled Cheese Sandwich',
        'A quick and easy sandwich for lunch.', 10, 10, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (3, 1),
       (3, 4);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (3, 'Bread', 2.0, 'Slices', 1),
       (3, 'Cheese', 1.0, 'Slice', 2);
-- --------------------------------------------------------
--
-- --------------------------------------------------------

-- 4th Recipe
INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (4, 4, '2023-03-20 00:00:00', '2023-03-20 00:00:00', 'Classic Beef Burger',
        'A juicy beef burger with all the trimmings.', 20, 15, 2);
INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (4, 2),
       (4, 6);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (4, 'Ground Beef', 200.0, 'Grams', 1),
       (4, 'Burger Bun', 1.0, 'Piece', 2),
       (4, 'Lettuce', 1.0, 'Leaf', 3),
       (4, 'Tomato', 1.0, 'Piece', 4),
       (4, 'Pickles', 1.0, 'Piece', 5);
-- --------------------------------------------------------
--
-- --------------------------------------------------------

-- 5th Recipe
INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (5, 2, '2023-03-25 00:00:00', '2023-03-25 00:00:00', 'Fish Tacos',
        'Delicious fish tacos with a tangy slaw.', 15, 20, 3);
INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (5, 3),
       (5, 11);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (5, 'Fish Fillets', 200.0, 'Grams', 1),
       (5, 'Spices', 1.0, 'Tbsp', 2),
       (5, 'Cabbage', 50.0, 'Grams', 3),
       (5, 'Carrots', 50.0, 'Grams', 4),
       (5, 'Mayonnaise', 2.0, 'Tbsp', 5),
       (5, 'Tortillas', 4.0, 'Pieces', 6);

-- --------------------
-- Recipe No. 6
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (6, 5, '2023-04-01 00:00:00', '2023-04-01 00:00:00', 'BBQ Chicken Wings',
        'Sweet and smoky chicken wings!', 20, 30, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (6, 5),
       (6, 9);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (6, 'Chicken Wings', 500.0, 'Grams', 1),
       (6, 'BBQ Sauce', 200.0, 'ml', 2);

-- --------------------
-- Recipe No. 7
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (7, 3, '2023-04-05 00:00:00', '2023-04-05 00:00:00', 'Vegetable Stir Fry',
        'Crisp and colorful vegetables stir-fried to perfection.', 15, 15, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (7, 6),
       (7, 11);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (7, 'Mixed Vegetables', 500.0, 'Grams', 1),
       (7, 'Oil', 2.0, 'Tbsp', 2),
       (7, 'Soy Sauce', 1.0, 'Tbsp', 3);

-- --------------------
-- Recipe No. 8
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (8, 4, '2023-04-10 00:00:00', '2023-04-10 00:00:00', 'Chocolate Chip Cookies',
        'Classic, chewy, and delicious!', 15, 12, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (8, 2),
       (8, 12);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (8, 'Chocolate Chips', 200.0, 'Grams', 1),
       (8, 'Butter', 100.0, 'Grams', 2),
       (8, 'Flour', 300.0, 'Grams', 3),
       (8, 'Sugar', 200.0, 'Grams', 4);

-- --------------------
-- Recipe No. 9
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (9, 1, '2023-05-01 00:00:00', '2023-05-01 00:00:00', 'Pancakes',
        'Fluffy and light breakfast pancakes.', 5, 15, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (9, 4),
       (9, 12);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (9, 'Flour', 200.0, 'Grams', 1),
       (9, 'Eggs', 2.0, 'Pieces', 2),
       (9, 'Milk', 200.0, 'ml', 3);


-- --------------------
-- Recipe No. 10
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (10, 2, '2023-05-05 00:00:00', '2023-05-05 00:00:00', 'Chicken Tikka Masala',
        'A rich and creamy Indian dish.', 30, 30, 3);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (10, 2),
       (10, 8);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (10, 'Chicken', 500.0, 'Grams', 1),
       (10, 'Spices', 50.0, 'Grams', 2),
       (10, 'Tomato Sauce', 200.0, 'ml', 3),
       (10, 'Cream', 100.0, 'ml', 4);


-- --------------------
-- Recipe No. 11
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (11, 5, '2023-05-10 00:00:00', '2023-05-10 00:00:00', 'Salad Nicoise',
        'A French composed salad with tunafish.', 20, 0, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (11, 1),
       (11, 11);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (11, 'Lettuce', 1.0, 'Head', 1),
       (11, 'Green Beans', 200.0, 'Grams', 2),
       (11, 'Potatoes', 200.0, 'Grams', 3),
       (11, 'Tuna', 200.0, 'Grams', 4),
       (11, 'Olives', 50.0, 'Grams', 5),
       (11, 'Eggs', 4.0, 'Pieces', 6);

-- --------------------
-- Recipe No. 12
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (12, 2, '2023-06-01 00:00:00', '2023-06-01 00:00:00', 'Spaghetti Bolognese',
        'A hearty Italian classic.', 15, 60, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (12, 5),
       (12, 10);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (12, 'Spaghetti', 200.0, 'Grams', 1),
       (12, 'Ground Beef', 200.0, 'Grams', 2),
       (12, 'Tomato Sauce', 200.0, 'ml', 3),
       (12, 'Parmesan', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 13
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (13, 3, '2023-06-15 00:00:00', '2023-06-15 00:00:00', 'Apple Pie',
        'A sweet and fruity dessert.', 30, 60, 3);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (13, 2),
       (13, 12);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (13, 'Apples', 500.0, 'Grams', 1),
       (13, 'Pie Crust', 1.0, 'Piece', 2),
       (13, 'Sugar', 200.0, 'Grams', 3),
       (13, 'Butter', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 14
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (14, 4, '2023-06-30 00:00:00', '2023-06-30 00:00:00', 'Caesar Salad',
        'A fresh and creamy salad.', 20, 0, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (14, 1),
       (14, 12);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (14, 'Lettuce', 1.0, 'Head', 1),
       (14, 'Croutons', 100.0, 'Grams', 2),
       (14, 'Parmesan', 100.0, 'Grams', 3),
       (14, 'Caesar Dressing', 100.0, 'ml', 4);

-- --------------------
-- Recipe No. 15
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (15, 5, '2023-07-01 00:00:00', '2023-07-01 00:00:00', 'Chocolate Brownies',
        'Rich and fudgy chocolate brownies.', 15, 40, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (15, 4),
       (15, 2);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (15, 'Chocolate', 200.0, 'Grams', 1),
       (15, 'Butter', 100.0, 'Grams', 2),
       (15, 'Flour', 150.0, 'Grams', 3),
       (15, 'Sugar', 200.0, 'Grams', 4);

-- --------------------
-- Recipe No. 16
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (16, 1, '2023-07-10 00:00:00', '2023-07-10 00:00:00', 'Vegetarian Pizza',
        'A cheesy pizza loaded with vegetables.', 15, 20, 3);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (16, 10),
       (16, 3);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (16, 'Pizza Dough', 1.0, 'Piece', 1),
       (16, 'Tomato Sauce', 200.0, 'ml', 2),
       (16, 'Cheese', 200.0, 'Grams', 3),
       (16, 'Mixed Vegetables', 200.0, 'Grams', 4);

-- --------------------
-- Recipe No. 17
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (17, 3, '2023-07-20 00:00:00', '2023-07-20 00:00:00', 'Chicken Curry',
        'A spicy and flavorful chicken curry.', 20, 30, 3);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (17, 8),
       (17, 1);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (17, 'Chicken', 500.0, 'Grams', 1),
       (17, 'Curry Powder', 2.0, 'Tbsp', 2),
       (17, 'Coconut Milk', 200.0, 'ml', 3),
       (17, 'Onion', 1.0, 'Piece', 4),
       (17, 'Garlic', 3.0, 'Cloves', 5);
-- --------------------
-- Recipe No. 18
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (18, 1, '2023-08-01 00:00:00', '2023-08-01 00:00:00', 'Stuffed Bell Peppers',
        'Bell peppers filled with flavorful ground meat.', 15, 45, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (18, 1),
       (18, 2);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (18, 'Bell Peppers', 4.0, 'Pieces', 1),
       (18, 'Ground Meat', 500.0, 'Grams', 2),
       (18, 'Rice', 200.0, 'Grams', 3),
       (18, 'Tomato Sauce', 200.0, 'ml', 4);

-- --------------------
-- Recipe No. 19
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (19, 4, '2023-08-10 00:00:00', '2023-08-10 00:00:00', 'Fish and Chips',
        'A British classic with homemade fries.', 20, 20, 3);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (19, 9),
       (19, 5);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (19, 'Fish Fillets', 500.0, 'Grams', 1),
       (19, 'Potatoes', 500.0, 'Grams', 2),
       (19, 'Flour', 200.0, 'Grams', 3),
       (19, 'Beer', 200.0, 'ml', 4);

-- --------------------
-- Recipe No. 20
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (20, 2, '2023-08-20 00:00:00', '2023-08-20 00:00:00', 'Tiramisu',
        'Italian dessert with coffee and mascarpone.', 30, 240, 4);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (20, 5),
       (20, 8);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (20, 'Ladyfingers', 200.0, 'Grams', 1),
       (20, 'Mascarpone', 500.0, 'Grams', 2),
       (20, 'Coffee', 200.0, 'ml', 3),
       (20, 'Sugar', 100.0, 'Grams', 4),
       (20, 'Eggs', 3.0, 'Pieces', 5);
-- --------------------
-- Recipe No. 21
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (21, 5, '2023-10-01 00:00:00', '2023-10-01 00:00:00', 'Steak and Potatoes',
        'Classic meat and potatoes dish.', 10, 20, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (21, 1),
       (21, 9);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (21, 'Steak', 1.0, 'Piece', 1),
       (21, 'Potatoes', 2.0, 'Pieces', 2),
       (21, 'Mixed Vegetables', 200.0, 'Grams', 3);

-- --------------------
-- Recipe No. 22
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (22, 4, '2023-09-15 00:00:00', '2023-09-15 00:00:00', 'Chicken Alfredo Pasta',
        'Creamy pasta with grilled chicken.', 15, 30, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (22, 5),
       (22, 10);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (22, 'Chicken Breast', 1.0, 'Piece', 1),
       (22, 'Pasta', 200.0, 'Grams', 2),
       (22, 'Cream', 200.0, 'ml', 3),
       (22, 'Parmesan', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 23
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (23, 4, '2024-01-10 00:00:00', '2024-01-10 00:00:00', 'Mushroom Risotto',
        'Creamy and delightful Italian classic.', 10, 30, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (23, 3),
       (23, 11);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (23, 'Mushrooms', 300.0, 'Grams', 1),
       (23, 'Arborio Rice', 200.0, 'Grams', 2),
       (23, 'Chicken Broth', 400.0, 'ml', 3),
       (23, 'Butter', 50.0, 'Grams', 4),
       (23, 'Parmesan', 100.0, 'Grams', 5);

-- --------------------
-- Recipe No. 24
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (24, 5, '2023-10-20 00:00:00', '2023-10-20 00:00:00', 'Beef Stir Fry',
        'Quick and easy asian-style beef stir fry.', 10, 10, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (24, 2),
       (24, 6);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (24, 'Beef', 500.0, 'Grams', 1),
       (24, 'Vegetables', 200.0, 'Grams', 2),
       (24, 'Soy Sauce', 50.0, 'ml', 3);

-- --------------------
-- Recipe No. 25
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (25, 3, '2023-11-20 00:00:00', '2023-11-20 00:00:00', 'Baked Salmon',
        'Delicious oven-baked salmon fillets.', 10, 20, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (25, 3),
       (25, 7);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (25, 'Salmon Fillets', 400.0, 'Grams', 1),
       (25, 'Olive Oil', 30.0, 'ml', 2),
       (25, 'Lemon', 1.0, 'Pieces', 4),
       (25, 'Dill', 10.0, 'Grams', 3);
-- --------------------
-- Recipe No. 26
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (26, 1, '2023-12-15 00:00:00', '2023-12-15 00:00:00', 'Cheese Pizza',
        'Simple and classic cheese pizza.', 15, 20, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (26, 5),
       (26, 12);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (26, 'Pizza Dough', 1.0, 'Piece', 1),
       (26, 'Pizza Sauce', 100.0, 'ml', 2),
       (26, 'Cheese', 200.0, 'Grams', 3);


-- --------------------
-- Recipe No. 27
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (27, 3, '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Spinach and Artichoke Dip',
        'Creamy, cheesy and easy party appetizer.', 10, 20, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (27, 7),
       (27, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (27, 'Spinach', 200.0, 'Grams', 1),
       (27, 'Artichoke Hearts', 200.0, 'Grams', 2),
       (27, 'Cream Cheese', 200.0, 'Grams', 3),
       (27, 'Mozzarella Cheese', 100.0, 'Grams', 4),
       (27, 'Parmesan Cheese', 100.0, 'Grams', 5);


-- --------------------
-- Recipe No. 28
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (28, 5, '2024-02-01 00:00:00', '2024-02-01 00:00:00', 'Chicken Caesar Salad',
        'Classic salad with grilled chicken.', 10, 20, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (28, 1),
       (28, 6);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (28, 'Chicken Breast', 1.0, 'Piece', 1),
       (28, 'Romaine Lettuce', 1.0, 'Head', 2),
       (28, 'Caesar Dressing', 100.0, 'ml', 3),
       (28, 'Croutons', 100.0, 'Grams', 4),
       (28, 'Parmesan', 50.0, 'Grams', 5);
-- --------------------
-- Recipe No. 29
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (29, 2, '2024-02-15 00:00:00', '2024-02-15 00:00:00', 'Chocolate Mousse',
        'Rich and airy chocolate dessert.', 20, 120, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (29, 2),
       (29, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (29, 'Dark Chocolate', 200.0, 'Grams', 1),
       (29, 'Egg Yolks', 4.0, 'Pieces', 2),
       (29, 'Heavy Cream', 200.0, 'ml', 3),
       (29, 'Sugar', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 30
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (30, 1, '2024-02-22 00:00:00', '2024-02-22 00:00:00', 'Black Forest Cake',
        'Delicious layered chocolate and cherry cake.', 30, 45, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (30, 2),
       (30, 7);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (30, 'Chocolate Cake Mix', 1.0, 'Box', 1),
       (30, 'Cherries', 200.0, 'Grams', 2),
       (30, 'Whipping Cream', 200.0, 'ml', 3),
       (30, 'Sugar', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 31
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (31, 2, '2024-03-01 00:00:00', '2024-03-01 00:00:00', 'Classic Margherita Pizza',
        'Simple yet flavorful Italian pizza.', 15, 12, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (31, 4),
       (31, 10);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (31, 'Pizza Dough', 1.0, 'Piece', 1),
       (31, 'Tomato Sauce', 100.0, 'ml', 2),
       (31, 'Mozzarella Cheese', 200.0, 'Grams', 3),
       (31, 'Basil Leaves', 10.0, 'Grams', 4);

-- --------------------
-- Recipe No. 32
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (32, 3, '2024-03-20 00:00:00', '2024-03-20 00:00:00', 'Spicy Dynamite Shrimp',
        'Crispy fried shrimp coated in spicy sauce.', 20, 15, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (32, 3),
       (32, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (32, 'Shrimp', 500.0, 'Grams', 1),
       (32, 'Flour', 100.0, 'Grams', 2),
       (32, 'Egg', 1.0, 'Piece', 3),
       (32, 'Chili Sauce', 50.0, 'ml', 4),
       (32, 'Mayonnaise', 50.0, 'Grams', 5);

-- --------------------
-- Recipe No. 33
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (33, 4, '2024-04-01 00:00:00', '2024-04-01 00:00:00', 'Vegetable Lasagna',
        'Hearty lasagna with layers of cooked vegetables.', 30, 60, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (33, 7),
       (33, 11);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (33, 'Lasagna Sheets', 12.0, 'Pieces', 1),
       (33, 'Mixed Vegetables', 500.0, 'Grams', 2),
       (33, 'Cheese', 200.0, 'Grams', 3),
       (33, 'Tomato Sauce', 200.0, 'ml', 4),
       (33, 'Olive Oil', 30.0, 'ml', 5);

-- --------------------
-- Recipe No. 34
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (34, 1, '2024-04-15 00:00:00', '2024-04-15 00:00:00', 'Homemade Chicken Noodle Soup',
        'Comforting and hearty chicken noodle soup.', 15, 45, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (34, 1),
       (34, 7);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (34, 'Chicken', 500.0, 'Grams', 1),
       (34, 'Carrots', 2.0, 'Pieces', 2),
       (34, 'Celery', 2.0, 'Stalks', 4),
       (34, 'Onion', 1.0, 'Piece', 3),
       (34, 'Noodles', 200.0, 'Grams', 5),
       (34, 'Water', 1.0, 'Liter', 6);

-- --------------------
-- Recipe No. 35
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (35, 5, '2024-05-01 00:00:00', '2024-05-01 00:00:00', 'Vegetarian Tacos',
        'Flavorful and hearty vegetarian tacos.', 15, 15, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (35, 2),
       (35, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (35, 'Taco Shells', 6.0, 'Pieces', 1),
       (35, 'Mixed Vegetables', 400.0, 'Grams', 2),
       (35, 'Black Beans', 200.0, 'Grams', 3),
       (35, 'Salsa', 100.0, 'ml', 4),
       (35, 'Guacamole', 100.0, 'Grams', 5);

-- --------------------
-- Recipe No. 36
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (36, 2, '2024-05-15 00:00:00', '2024-05-15 00:00:00', 'Banana Bread',
        'Moist and delicious bread with ripe bananas.', 15, 60, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (36, 8),
       (36, 1);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (36, 'Ripe Bananas', 3.0, 'Pieces', 1),
       (36, 'Sugar', 200.0, 'Grams', 2),
       (36, 'Egg', 1.0, 'Piece', 3),
       (36, 'Butter', 50.0, 'Grams', 4),
       (36, 'Flour', 200.0, 'Grams', 5),
       (36, 'Baking Soda', 1.0, 'Teaspoon', 6);

-- --------------------
-- Recipe No. 37
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (37, 3, '2024-06-01 00:00:00', '2024-06-01 00:00:00', 'Egg Fried Rice',
        'Simple and satisfying egg fried rice.', 10, 10, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (37, 5),
       (37, 10);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (37, 'Eggs', 2.0, 'Pieces', 1),
       (37, 'Cooked Rice', 200.0, 'Grams', 2),
       (37, 'Vegetables', 100.0, 'Grams', 3),
       (37, 'Soy Sauce', 30.0, 'ml', 4);


-- --------------------
-- Recipe No. 38
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (38, 4, '2024-06-15 00:00:00', '2024-06-15 00:00:00', 'Classic Caesar Salad',
        'Crispy romaine lettuce with creamy Caesar dressing.', 10, 0, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (38, 1),
       (38, 6);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (38, 'Romaine Lettuce', 1.0, 'Head', 1),
       (38, 'Caesar Dressing', 100.0, 'ml', 2),
       (38, 'Croutons', 100.0, 'Grams', 3),
       (38, 'Parmesan', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 39
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (39, 1, '2024-06-20 00:00:00', '2024-06-20 00:00:00', 'Classic Greek Salad',
        'Refreshing salad with fresh vegetables and feta cheese.', 15, 0, 1);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (39, 1),
       (39, 6);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (39, 'Tomatoes', 2.0, 'Pieces', 1),
       (39, 'Cucumbers', 1.0, 'Piece', 2),
       (39, 'Red Onions', 0.5, 'Piece', 3),
       (39, 'Green Bell Peppers', 1.0, 'Piece', 4),
       (39, 'Feta Cheese', 100.0, 'Grams', 5),
       (39, 'Olive Oil', 30.0, 'ml', 6);

-- --------------------
-- Recipe No. 40
-- --------------------

INSERT INTO recipes (id, user_id, created_at, updated_at, title, headline,
                     preparation_time, cook_time, meal_type_id)
VALUES (40, 5, '2024-07-10 00:00:00', '2024-07-10 00:00:00', 'French Onion Soup',
        'Rich and flavorful onion soup topped with cheesy toast.', 15, 45, 2);

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (40, 1),
       (40, 7);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (40, 'Onions', 2.0, 'Pieces', 1),
       (40, 'Beef Broth', 400.0, 'ml', 2),
       (40, 'Bread', 4.0, 'Slices', 3),
       (40, 'Gruyère Cheese', 100.0, 'Grams', 4);

-- @formatter:off
UPDATE recipes SET headline = CONCAT(headline, ' This is the best recipe ever! Taste the joy of home cooking.') WHERE id = 1;
UPDATE recipes SET headline = CONCAT(headline, ' A delight for all food lovers! Guaranteed to impress.') WHERE id = 2;
UPDATE recipes SET headline = CONCAT(headline, ' Easy to make, fun to eat! Perfect for a quick meal.') WHERE id = 3;
UPDATE recipes SET headline = CONCAT(headline, ' Perfect for a family dinner! Everyone will ask for seconds.') WHERE id = 4;
UPDATE recipes SET headline = CONCAT(headline, ' Great for parties and gatherings! Your guests will love it.') WHERE id = 5;
UPDATE recipes SET headline = CONCAT(headline, ' Enjoy the goodness of homemade food! Healthy and tasty.') WHERE id = 6;
UPDATE recipes SET headline = CONCAT(headline, ' Treat yourself with this recipe. It''s a real comfort food.') WHERE id = 7;
UPDATE recipes SET headline = CONCAT(headline, ' This is a must-try for everyone! Explore world cuisines with our recipes.') WHERE id = 8;
UPDATE recipes SET headline = CONCAT(headline, ' Bring restaurant-style cooking at home! Save time without compromising on taste.') WHERE id = 9;
UPDATE recipes SET headline = CONCAT(headline, ' Create wonderful memories around the dinner table. Food that feels like home.') WHERE id = 10;
UPDATE recipes SET headline = CONCAT(headline, ' Keep your loved ones happy and healthy. Good food is just a recipe away.') WHERE id = 11;
UPDATE recipes SET headline = CONCAT(headline, ' A new favorite for kids and adults alike! It''s a hit at dinner parties.') WHERE id = 12;
UPDATE recipes SET headline = CONCAT(headline, ' Save time without compromising on taste. Quick, simple, and incredibly delicious.') WHERE id = 13;
UPDATE recipes SET headline = CONCAT(headline, ' Quick, simple, and incredibly delicious. No more take-outs, cook at home!') WHERE id = 14;
UPDATE recipes SET headline = CONCAT(headline, ' Explore world cuisines with our recipes. For the love of cooking and eating.') WHERE id = 15;
UPDATE recipes SET headline = CONCAT(headline, ' Good food is just a recipe away. Made with love and fresh ingredients.') WHERE id = 16;
UPDATE recipes SET headline = CONCAT(headline, ' No more take-outs. Cook at home! One bite and you will fall in love!') WHERE id = 17;
UPDATE recipes SET headline = CONCAT(headline, ' Made with love and fresh ingredients. For the love of cooking and eating.') WHERE id = 18;
UPDATE recipes SET headline = CONCAT(headline, ' For the love of cooking and eating. This recipe deserves a place in your cookbook.') WHERE id = 19;
UPDATE recipes SET headline = CONCAT(headline, ' One bite and you will fall in love! This will become your new favorite!') WHERE id = 20;
UPDATE recipes SET headline = CONCAT(headline, ' This recipe deserves a place in your cookbook. Create magic in your kitchen!') WHERE id = 21;
UPDATE recipes SET headline = CONCAT(headline, ' Create magic in your kitchen! Always a hit at dinner parties.') WHERE id = 22;
UPDATE recipes SET headline = CONCAT(headline, ' Always a hit at dinner parties! New to cooking? Start with this!') WHERE id = 23;
UPDATE recipes SET headline = CONCAT(headline, ' New to cooking? Start with this! Healthy, nutritive, and appetizing.') WHERE id = 24;
UPDATE recipes SET headline = CONCAT(headline, ' Healthy, nutritive, and appetizing. This will become your new favorite!') WHERE id = 25;
UPDATE recipes SET headline = CONCAT(headline, ' This will become your new favorite! For people who love good food.') WHERE id = 26;
UPDATE recipes SET headline = CONCAT(headline, ' For people who love good food. Comfort food at its best!') WHERE id = 27;
UPDATE recipes SET headline = CONCAT(headline, ' Comfort food at its best! It’s like a hug in a bowl.') WHERE id = 28;
UPDATE recipes SET headline = CONCAT(headline, ' It’s like a hug in a bowl. Good mood food!') WHERE id = 29;
UPDATE recipes SET headline = CONCAT(headline, ' Good mood food! Perfect for the culinary adventurer.') WHERE id = 30;
UPDATE recipes SET headline = CONCAT(headline, ' Perfect for the culinary adventurer. You will ask for seconds... Guaranteed!') WHERE id = 31;
UPDATE recipes SET headline = CONCAT(headline, ' You will ask for seconds... Guaranteed! Impress everyone with your cooking skills!') WHERE id = 32;
UPDATE recipes SET headline = CONCAT(headline, ' Impress everyone with your cooking skills! It’s not just food, it’s an experience.') WHERE id = 33;
UPDATE recipes SET headline = CONCAT(headline, ' It’s not just food, it’s an experience. Simple ingredients, extraordinary taste!') WHERE id = 34;
UPDATE recipes SET headline = CONCAT(headline, ' Simple ingredients, extraordinary taste! Taste the joy of homemade cooking.') WHERE id = 35;
UPDATE recipes SET headline = CONCAT(headline, ' Taste the joy of homemade cooking. Fresh, quick, and delicious!') WHERE id = 36;
UPDATE recipes SET headline = CONCAT(headline, ' Fresh, quick, and delicious! Bon Appétit!') WHERE id = 37;
UPDATE recipes SET headline = CONCAT(headline, ' Bon Appétit! Food that feels like home.') WHERE id = 38;
UPDATE recipes SET headline = CONCAT(headline, ' Food that feels like home. Making everyday cooking fun!') WHERE id = 39;
UPDATE recipes SET headline = CONCAT(headline, ' Making everyday cooking fun! A delight to the taste buds.') WHERE id = 40;
-- @formatter:on
--
-- add difficulties
--

-- @formatter:off

INSERT INTO recipe_categories (recipe_id, category_id) VALUES
   (1, (select c.id from categories c where c.title = 'Medium')),
   (2, (select c.id from categories c where c.title = 'Medium')),
   (3, (select c.id from categories c where c.title = 'Easy')),
   (4, (select c.id from categories c where c.title = 'Medium')),
   (5, (select c.id from categories c where c.title = 'Hard')),
   (6, (select c.id from categories c where c.title = 'Medium')),
   (7, (select c.id from categories c where c.title = 'Easy')),
   (8, (select c.id from categories c where c.title = 'Easy')),
   (9, (select c.id from categories c where c.title = 'Easy')),
   (10, (select c.id from categories c where c.title = 'Hard')),
   (11, (select c.id from categories c where c.title = 'Medium')),
   (12, (select c.id from categories c where c.title = 'Medium')),
   (13, (select c.id from categories c where c.title = 'Hard')),
   (14, (select c.id from categories c where c.title = 'Easy')),
   (15, (select c.id from categories c where c.title = 'Medium')),
   (16, (select c.id from categories c where c.title = 'Hard')),
   (17, (select c.id from categories c where c.title = 'Hard')),
   (18, (select c.id from categories c where c.title = 'Medium')),
   (19, (select c.id from categories c where c.title = 'Hard')),
   (20, (select c.id from categories c where c.title = 'Expert')),
   (21, (select c.id from categories c where c.title = 'Medium')),
   (22, (select c.id from categories c where c.title = 'Medium')),
   (23, (select c.id from categories c where c.title = 'Medium')),
   (24, (select c.id from categories c where c.title = 'Easy')),
   (25, (select c.id from categories c where c.title = 'Medium')),
   (26, (select c.id from categories c where c.title = 'Easy')),
   (27, (select c.id from categories c where c.title = 'Easy')),
   (28, (select c.id from categories c where c.title = 'Easy')),
   (29, (select c.id from categories c where c.title = 'Medium')),
   (30, (select c.id from categories c where c.title = 'Medium')),
   (31, (select c.id from categories c where c.title = 'Easy')),
   (32, (select c.id from categories c where c.title = 'Medium')),
   (33, (select c.id from categories c where c.title = 'Medium')),
   (34, (select c.id from categories c where c.title = 'Medium')),
   (35, (select c.id from categories c where c.title = 'Easy')),
   (36, (select c.id from categories c where c.title = 'Easy')),
   (37, (select c.id from categories c where c.title = 'Easy')),
   (38, (select c.id from categories c where c.title = 'Easy')),
   (39, (select c.id from categories c where c.title = 'Easy')),
   (40, (select c.id from categories c where c.title = 'Medium'));
-- @formatter:on

-- @formatter:off
INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (1, 1, 'Start by chopping the vegetables. Make sure they are cut into even pieces for even cooking.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (2, 1, 'Heat oil in a pot and sauté the onion, garlic. Stir regularly to prevent them from sticking.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (3, 1, 'Add all the veggies into the pot with water. Cook for 20 minutes. Be sure to check the progress regularly.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (4, 1, 'Add seasoning and serve hot. Best enjoyed with warm bread and butter.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (5, 2, 'Cook your spaghetti in boiling water. Use a large pot to avoid the pasta sticking together.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (6, 2, 'In another pan, cook pancetta or guanciale. Fry until crispy, then set aside.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (7, 2, 'Beat the eggs in a bowl, and add the cheese. Mix well to combine.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (8, 2, 'Mix pasta with the meat, and then with the egg mixture. Serve warm with extra cheese on top.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (9, 2, 'Serve hot. Garnish with fresh parsley and parmesan.', 5);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (10, 3, 'Take two bread slices. Ensure both slices are of the same size for even toasting.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (11, 3, 'Put cheese on one slice and cover it with the other. The cheese should be evenly spread out.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (12, 3, 'Grill the sandwich until golden. Flip occasionally to avoid burning.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (13, 3, 'Serve hot. Enjoy with a cup of hot coffee for the perfect breakfast.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (14, 4, 'Make a patty from the ground beef. The patty should be even for equal cooking.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (15, 4, 'Cook patty on the grill. Cook well on both sides for a balanced flavor.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (16, 4, 'Assemble the burger with the cooked patty, lettuce, tomatoes, pickles, and sauce. Feel free to add more toppings.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (17, 4, 'Serve immediately. The burger tastes best when hot.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (18, 5, 'Coat fish with spices and fry until crispy. Make sure all sides are well cooked.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (19, 5, 'Prepare the slaw and the dressing. Keep it ready before the fish is done frying.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (20, 5, 'Warm up the tortillas. Warming up makes them more pliable and enhances flavor.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (21, 5, 'Assemble the tacos with the cooked fish, slaw, and any additional toppings. Add a squeeze of fresh lime for extra flavor.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (22, 6, 'Marinate wings in BBQ sauce. Allowing them to marinate overnight will enhance the flavor.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (23, 6, 'Grill until caramelized. Turning regularly will help achieve a nice color.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (24, 6, 'Serve with extra sauce. Spread evenly for richer taste.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (25, 7, 'Heat oil, stir-fry vegetables until tender. Keep stirring at intervals.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (26, 7, 'Add sauce and stir well. Ensure all ingredients are coated evenly.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (27, 7, 'Serve hot. Sprinkle some seasoning for extra taste.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (28, 8, 'Combine ingredients, fold in chocolate chips. Ensure chips are spread evenly.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (29, 8, 'Drop rounded spoonfuls onto baking sheet. Ensure they are evenly spaced.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (30, 8, 'Bake until edges are golden brown. Rotate the tray if necessary for even colouring.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (31, 9, 'Mix flour, egg, and milk in a bowl. Mix until you have a smooth batter.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (32, 9, 'Fry rounded dollops on a non stick pan. Flip when you see bubbles on the surface.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (33, 9, 'Serve with syrup. A drizzle of honey or a sprinkle of powdered sugar could also be nice.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (34, 10, 'Marinate chicken in spices. Leave in fridge overnight if time allows for more flavour.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (35, 10, 'Grill and set aside. Keep warm for later use.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (36, 10, 'Cook the masala base. Saute onions until translucent as a first step.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (37, 10, 'Add grilled chicken to the masala. Let simmer for a few minutes to allow flavours to meld.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (38, 11, 'Arrange all ingredients in separate rows on a large platter. Have everything within reach for easy access.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (39, 11, 'Drizzle with the dressing and serve. Garnish with a lemony twist, if desired.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (40, 12, 'Cook the spaghetti. Stir occasionally to prevent it from sticking together.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (41, 12, 'Simultaneously, simmer the meat in tomato sauce. The flavours should melt together.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (42, 12, 'Serve with Parmesan. You can also add some fresh basil on top.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (43, 13, 'Prepare the crust and the apple filling. Ensure the apples are thinly sliced.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (44, 13, 'Assemble and bake until golden. Rotate the pie once or twice during baking.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (45, 14, 'Prepare the lettuce and croutons. Tear the lettuce into bite-sized pieces.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (46, 14, 'Toss with the dressing and cheese. Don''t forget to season with salt and pepper.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (47, 15, 'Mix the batter. It''s okay if the mix is a little lumpy.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (48, 15, 'Pour into a baking dish. Be sure to smooth the top with a spatula.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (49, 15, 'Bake until a toothpick inserted comes out with a few crumbs. Keep an eye on it and don\''t let it overbake!', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (50, 16, 'Roll out the pizza dough. Make sure to maintain a uniform thickness for even cooking.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (51, 16, 'Spread the sauce and cheese. Leave a small border around the edge for the crust.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (52, 16, 'Top with your favorite vegetables. This is where you can get creative with your pizza!', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (53, 16, 'Bake until the crust is golden. The cheese should be bubbling and nicely browned.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (54, 17, 'Brown the chicken. This will seal in the juices and give it a beautiful color.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (55, 17, 'Saute the spices. Be sure not to burn them or they could become bitter.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (56, 17, 'Combine everything and simmer until the chicken is tender. Be patient, good food takes time!', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (57, 18, 'Hollow out the peppers. Carefully remove the seeds and membranes.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no) VALUES (58, 18, 'Prepare the filling. The exact ingredients can vary based on your preferences.', 2);
INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (59, 18, 'Stuff the peppers and bake until tender. Ensure filling is evenly distributed.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (60, 19, 'Batter the fish and fry until golden. Turn occasionally for even cooking.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (61, 19, 'Fry the potato strips. Be careful not to overcrowd the pan.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (62, 19, 'Serve with malt vinegar or tartare sauce. Lemon wedges could also be a good addition.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (63, 20, 'Layer coffee-dipped ladyfingers and mascarpone cream. For a boozy kick, mix some liqueur with the coffee.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (64, 20, 'Chill for at least 4 hours, or overnight. This will help flavors meld together.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (65, 20, 'Serve dusted with cocoa powder. A sprig of fresh mint could be a nice garnish.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (66, 21, 'Grill the steak to your desired doneness. Allow steak to rest for a few minutes before serving.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no) VALUES (67, 21, 'Bake the potatoes until tender. Remember to poke some holes in the potatoes before baking.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (68, 21, 'Serve with a side of vegetables. The crispy freshness will balance the rich steak and potatoes.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (69, 22, 'Grill the chicken and set aside. Be sure to let it rest to seal in the juices.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (70, 22, 'Cook pasta. Stir occasionally to avoid it sticking to the pot.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (71, 22, 'Prepare alfredo sauce. Try using real cream for rich flavor.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (72, 22, 'Toss pasta in alfredo sauce and top with chicken. Add some crushed black pepper as a finish touch.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (73, 23, 'Sauté the mushrooms in butter. Cook until they''re nicely browned.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (74, 23, 'In another pot, cook arborio rice. Be sure to stir it constantly to prevent it from sticking.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (75, 23, 'Combine the two and add broth gradually. The rice should be always covered by liquid.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (76, 23, 'Stir continuously until creamy. Add a knob of butter at the end for extra creaminess.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (77, 24, 'Marinate beef with sauce and spices. Leave it for a few hours to allow flavors to penetrate.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (78, 24, 'Fry beef until browned and add vegetables. Cut the vegetables into similar sizes for even cooking. The subtle mix of textures will be delightful.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (79, 24, 'Serve hot with rice. Garnish with fresh coriander for an added zing.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (80, 25, 'Marinate salmon and refrigerator for an hour. This will help the flavors penetrate the salmon.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (81, 25, 'Bake in a preheated oven at 200C. Essential to preheat, so salmon cooks evenly.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (82, 25, 'Serve with lemon. A squeeze of lemon juice will give it a fresh taste.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (83, 26, 'Spread pizza sauce on dough. Be generous with the sauce for a flavorful pizza.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (84, 26, 'Sprinkle a generous portion of cheese. Use a blend of cheeses for best results.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (85, 26, 'Bake in a preheated oven at 200C until cheese is melted and slightly browned. Rotate once during baking to cook evenly.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (86, 27, 'Combine all ingredients in a bowl. Mix well to ensure a homogeneous blend.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (87, 27, 'Bake in a preheated oven until melted and slightly browned. Watch it carefully to prevent burning.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (88, 27, 'Serve hot with bread sticks. These add a nice contrasting crunch to the dip.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (89, 28, 'Grill chicken and slice. Try to keep the slices thin and evenly cut.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (90, 28, 'Toss lettuce in Caesar dressing. Remember not to drown the lettuce in dressing.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (91, 28, 'Top with chicken, croutons and grated Parmesan. The more cheese, the merrier.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (92, 29, 'Melt chocolate and mix with yolks. The yolks will lend creaminess to the chocolate.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (93, 29, 'Whip cream to soft peaks. This will add volume and lightness to the recipe.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (94, 29, 'Fold cream into chocolate mixture. Do not over mix else you''ll lose the airy texture of the cream.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (95, 29, 'Chill for at least 2 hours or until set. The waiting is the hardest part but it will be worth it!', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (96, 30, 'Prepare chocolate cake and cut into layers. Evenly layered cakes make the most beautiful slices.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (97, 30, 'Layer cake with whipped cream and cherries. Make sure each layer is nicely visible when you look at the cake from the side.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (98, 30, 'Decorate with more whipped cream and cherries. Its a cherry on top, quite literally! Make sure to spread them evenly across the cake.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (99, 31, 'Roll out the pizza dough. Use a rolling pin for an even thickness.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (100, 31, 'Spread the sauce evenly on the dough. Don’t forget to leave a small border for the crust.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (101, 31, 'Sprinkle mozzarella cheese and add basil leaves. The basil will provide a fresh and aromatic contrast to the cheese.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (102, 31, 'Bake until crust is golden and cheese is bubbly. Rotate the pizza once for even cooking.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (103, 32, 'Fry the shrimp until golden brown. Frying should take about 2-3 minutes per side for shrimp to be perfectly cooked.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (104, 32, 'In a separate bowl, mix the sauce ingredients. This will create a balanced, tangy sauce that coats the shrimp.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (105, 32, 'Toss the fried shrimp in the sauce until well coated. Ensure each shrimp is evenly coated in the sauce.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (106, 33, 'Cook vegetables in a pan. Dice the vegetables for even cooking.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (107, 33, 'Layer lasagna sheets, vegetables, and cheese in a baking dish. Start and end with a layer of pasta for a structured lasagna.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (108, 33, 'Repeat the layers until all ingredients are used. Press down after each layer to eliminate air pockets.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (109, 33, 'Bake in a preheated oven at 180C until the top is golden and the sauce bubbles at the sides. Make sure to set your timer to avoid over-baking.', 4);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (110, 34, 'Sauté vegetables in a large pot. Stir them frequently until they become tender.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (111, 34, 'Add chicken pieces and water to the pot and simmer. The simmering process is gentle, perfect for keeping the chicken tender.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (112, 34, 'Add noodles to the pot and cook until tender. This will usually take around 10-12 minutes.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (113, 35, 'Sauté vegetables and beans in a pan with spices. The spices will add a lot of flavor to the base of the recipe.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (114, 35, 'Fill taco shells with the sautéed vegetable mix. Make sure to not overcrowd the shell as it can break.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (115, 35, 'Top with salsa and guacamole. This adds an extra punch of flavor and moisture.', 3);
INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (116, 36, 'Combine mashed bananas, sugar, eggs, and melted butter. Make sure the mixture is smooth and lump-free before proceeding.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (117, 36, 'Add in the dry ingredients and mix just until flour is incorporated. Be careful not to overmix as it can make the bread tough.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (118, 36, 'Bake in a preheated oven until a tester inserted in the center of the bread comes out clean. This ensures proper cooking.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (119, 37, 'Scramble the egg in a pan and set aside. Try to break the egg into small pieces for consistency.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (120, 37, 'Sauté vegetables in the same pan. This absorbs any leftover flavors from the egg.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (121, 37, 'Add cooked rice, scrambled egg, and soy sauce to the pan and stir thoroughly. Mix until every grain of rice is seasoned.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (122, 38, 'Toss romaine lettuce in Caesar dressing. Ensure every bit of lettuce gets a coating of that tangy dressing.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (123, 38, 'Top your salad with homemade croutons and freshly grated Parmesan. Crack some fresh black pepper over the top for an added zest.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (124, 39, 'Cut all the vegetables and feta into bite-size pieces. This ensures everything is of a similar size for uniform eating.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (125, 39, 'Combine all ingredients in a large salad bowl. Toss thoroughly so everything is evenly distributed.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (126, 39, 'Drizzle with olive oil and season with salt and pepper. Toss again to make sure everything is well-seasoned and coated.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (127, 40, 'Caramelize the onions in a pot until golden brown. Stir occasionally to prevent them from sticking.', 1);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (128, 40, 'Add beef broth to the pot, and let it simmer. This will combine the flavors and make the soup rich.', 2);

INSERT INTO public.instructions (id, recipe_id, description, order_no)
VALUES (129, 40, 'Pour soup into ovenproof bowls, top each with a slice of bread and some shredded Gruyère. The bread adds a crunch that contrasts nicely with the soft onions.', 3);

INSERT INTO public.instructions (id, recipe_id, description, order_no) VALUES (130, 40, 'Put the bowls under your oven broiler until the cheese has melted and bubbly. Watch closely to avoid burning!', 4);-- @formatter:on