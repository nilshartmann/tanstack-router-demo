-- Inserting into the recipes table
INSERT INTO recipes (id,
                     user_id,
                     created_at,
                     updated_at,
                     title,
                     headline,
                     preparation_time,
                     cook_time,
                     difficulty_level_id,
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
                     difficulty_level_id,
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
INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           3, 2, '2023-03-15 00:00:00', '2023-03-15 00:00:00', 'Grilled Cheese Sandwich',
           'A quick and easy sandwich for lunch.', 10, 10, 1,
           '1. Take two bread slices.\n2. Put cheese on one slice and cover it with the other.\n3. Grill the sandwich until golden.\n4. Serve hot.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (3, 1), (3, 4);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (3, 'Bread', 2.0, 'Slices', 1),
       (3, 'Cheese', 1.0, 'Slice', 2);
-- --------------------------------------------------------
--
-- --------------------------------------------------------

-- 4th Recipe
INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           4, 4, '2023-03-20 00:00:00', '2023-03-20 00:00:00', 'Classic Beef Burger',
           'A juicy beef burger with all the trimmings.', 20, 15, 2,
           '1. Make a patty from the ground beef.\n2. Cook patty on the grill.\n3. Assemble the burger with the cooked patty, lettuce, tomatoes, pickles, and sauce.\n4. Serve immediately.');
INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (4, 2), (4, 6);
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
INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           5, 2, '2023-03-25 00:00:00', '2023-03-25 00:00:00', 'Fish Tacos',
           'Delicious fish tacos with a tangy slaw.', 15, 20, 3,
           '1. Coat fish with spices and fry until crispy.\n2. Prepare the slaw and the dressing.\n3. Warm up the tortillas.\n4. Assemble the tacos with the cooked fish, slaw, and any additional toppings.');
INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (5, 3), (5, 11);
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

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           6, 5, '2023-04-01 00:00:00', '2023-04-01 00:00:00', 'BBQ Chicken Wings',
           'Sweet and smoky chicken wings!', 20, 30, 2,
           '1. Marinate wings in BBQ sauce.\n2. Grill until caramelized.\n3. Serve with extra sauce.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (6, 5), (6, 9);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (6, 'Chicken Wings', 500.0, 'Grams', 1),
       (6, 'BBQ Sauce', 200.0, 'ml', 2);

-- --------------------
-- Recipe No. 7
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           7, 3, '2023-04-05 00:00:00', '2023-04-05 00:00:00', 'Vegetable Stir Fry',
           'Crisp and colorful vegetables stir-fried to perfection.', 15, 15, 1,
           '1. Heat oil, stir-fry vegetables until tender.\n2. Add sauce and stir well.\n3. Serve hot.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (7, 6), (7, 11);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (7, 'Mixed Vegetables', 500.0, 'Grams', 1),
       (7, 'Oil', 2.0, 'Tbsp', 2),
       (7, 'Soy Sauce', 1.0, 'Tbsp', 3);

-- --------------------
-- Recipe No. 8
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           8, 4, '2023-04-10 00:00:00', '2023-04-10 00:00:00', 'Chocolate Chip Cookies',
           'Classic, chewy, and delicious!', 15, 12, 1,
           '1. Combine ingredients, fold in chocolate chips.\n2. Drop rounded spoonfuls onto baking sheet.\n3. Bake until edges are golden brown.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (8, 2), (8, 12);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (8, 'Chocolate Chips', 200.0, 'Grams', 1),
       (8, 'Butter', 100.0, 'Grams', 2),
       (8, 'Flour', 300.0, 'Grams', 3),
       (8, 'Sugar', 200.0, 'Grams', 4);

-- --------------------
-- Recipe No. 9
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           9, 1, '2023-05-01 00:00:00', '2023-05-01 00:00:00', 'Pancakes',
           'Fluffy and light breakfast pancakes.', 5, 15, 1,
           '1. Mix flour, egg, and milk in a bowl.\n2. Fry rounded dollops on a non stick pan.\n3. Serve with syrup.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (9, 4), (9, 12);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (9, 'Flour', 200.0, 'Grams', 1),
       (9, 'Eggs', 2.0, 'Pieces', 2),
       (9, 'Milk', 200.0, 'ml', 3);


-- --------------------
-- Recipe No. 10
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           10, 2, '2023-05-05 00:00:00', '2023-05-05 00:00:00', 'Chicken Tikka Masala',
           'A rich and creamy Indian dish.', 30, 30, 3,
           '1. Marinate chicken in spices.\n2. Grill and set aside.\n3. Cook the masala base.\n4. Add grilled chicken to the masala.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (10, 2), (10, 8);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (10, 'Chicken', 500.0, 'Grams', 1),
       (10, 'Spices', 50.0, 'Grams', 2),
       (10, 'Tomato Sauce', 200.0, 'ml', 3),
       (10, 'Cream', 100.0, 'ml', 4);


-- --------------------
-- Recipe No. 11
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           11, 5, '2023-05-10 00:00:00', '2023-05-10 00:00:00', 'Salad Nicoise',
           'A French composed salad with tunafish.', 20, 0, 2,
           '1. Arrange all ingredients in separate rows on a large platter.\n2. Drizzle with the dressing and serve.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (11, 1), (11, 11);
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

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           12, 2, '2023-06-01 00:00:00', '2023-06-01 00:00:00', 'Spaghetti Bolognese',
           'A hearty Italian classic.', 15, 60, 2,
           '1. Cook the spaghetti.\n2. Simultaneously, simmer the meat in tomato sauce.\n3. Serve with Parmesan.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (12, 5), (12, 10);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (12, 'Spaghetti', 200.0, 'Grams', 1),
       (12, 'Ground Beef', 200.0, 'Grams', 2),
       (12, 'Tomato Sauce', 200.0, 'ml', 3),
       (12, 'Parmesan', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 13
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           13, 3, '2023-06-15 00:00:00', '2023-06-15 00:00:00', 'Apple Pie',
           'A sweet and fruity dessert.', 30, 60, 3,
           '1. Prepare the crust and the apple filling.\n2. Assemble and bake until golden.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (13, 2), (13, 12);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (13, 'Apples', 500.0, 'Grams', 1),
       (13, 'Pie Crust', 1.0, 'Piece', 2),
       (13, 'Sugar', 200.0, 'Grams', 3),
       (13, 'Butter', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 14
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           14, 4, '2023-06-30 00:00:00', '2023-06-30 00:00:00', 'Caesar Salad',
           'A fresh and creamy salad.', 20, 0, 1,
           '1. Prepare the lettuce and croutons.\n2. Toss with the dressing and cheese.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (14, 1), (14, 12);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (14, 'Lettuce', 1.0, 'Head', 1),
       (14, 'Croutons', 100.0, 'Grams', 2),
       (14, 'Parmesan', 100.0, 'Grams', 3),
       (14, 'Caesar Dressing', 100.0, 'ml', 4);

-- --------------------
-- Recipe No. 15
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           15, 5, '2023-07-01 00:00:00', '2023-07-01 00:00:00', 'Chocolate Brownies',
           'Rich and fudgy chocolate brownies.', 15, 40, 2,
           '1. Mix the batter.\n2. Pour into a baking dish.\n3. Bake until a toothpick inserted comes out with a few crumbs.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (15, 4), (15, 2);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (15, 'Chocolate', 200.0, 'Grams', 1),
       (15, 'Butter', 100.0, 'Grams', 2),
       (15, 'Flour', 150.0, 'Grams', 3),
       (15, 'Sugar', 200.0, 'Grams', 4);

-- --------------------
-- Recipe No. 16
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           16, 1, '2023-07-10 00:00:00', '2023-07-10 00:00:00', 'Vegetarian Pizza',
           'A cheesy pizza loaded with vegetables.', 15, 20, 3,
           '1. Roll out the pizza dough.\n2. Spread the sauce and cheese.\n3. Top with your favorite vegetables.\n4. Bake until the crust is golden.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (16, 10), (16, 3);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (16, 'Pizza Dough', 1.0, 'Piece', 1),
       (16, 'Tomato Sauce', 200.0, 'ml', 2),
       (16, 'Cheese', 200.0, 'Grams', 3),
       (16, 'Mixed Vegetables', 200.0, 'Grams', 4);

-- --------------------
-- Recipe No. 17
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           17, 3, '2023-07-20 00:00:00', '2023-07-20 00:00:00', 'Chicken Curry',
           'A spicy and flavorful chicken curry.', 20, 30, 3,
           '1. Brown the chicken.\n2. Saute the spices.\n3. Combine everything and simmer until the chicken is tender.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (17, 8), (17, 1);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (17, 'Chicken', 500.0, 'Grams', 1),
       (17, 'Curry Powder', 2.0, 'Tbsp', 2),
       (17, 'Coconut Milk', 200.0, 'ml', 3),
       (17, 'Onion', 1.0, 'Piece', 4),
       (17, 'Garlic', 3.0, 'Cloves', 5);
-- --------------------
-- Recipe No. 18
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           18, 1, '2023-08-01 00:00:00', '2023-08-01 00:00:00', 'Stuffed Bell Peppers',
           'Bell peppers filled with flavorful ground meat.', 15, 45, 2,
           '1. Hollow out the peppers.\n2. Prepare the filling.\n3. Stuff the peppers and bake until tender.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (18, 1), (18, 2);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (18, 'Bell Peppers', 4.0, 'Pieces', 1),
       (18, 'Ground Meat', 500.0, 'Grams', 2),
       (18, 'Rice', 200.0, 'Grams', 3),
       (18, 'Tomato Sauce', 200.0, 'ml', 4);

-- --------------------
-- Recipe No. 19
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           19, 4, '2023-08-10 00:00:00', '2023-08-10 00:00:00', 'Fish and Chips',
           'A British classic with homemade fries.', 20, 20, 3,
           '1. Batter the fish and fry until golden.\n2. Fry the potato strips.\n3. Serve with malt vinegar or tartare sauce.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (19, 9), (19, 5);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (19, 'Fish Fillets', 500.0, 'Grams', 1),
       (19, 'Potatoes', 500.0, 'Grams', 2),
       (19, 'Flour', 200.0, 'Grams', 3),
       (19, 'Beer', 200.0, 'ml', 4);

-- --------------------
-- Recipe No. 20
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           20, 2, '2023-08-20 00:00:00', '2023-08-20 00:00:00', 'Tiramisu',
           'Italian dessert with coffee and mascarpone.', 30, 240, 4,
           '1. Layer coffee-dipped ladyfingers and mascarpone cream.\n2. Chill for at least 4 hours, or overnight.\n3. Serve dusted with cocoa powder.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (20, 5), (20, 8);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (20, 'Ladyfingers', 200.0, 'Grams', 1),
       (20, 'Mascarpone', 500.0, 'Grams', 2),
       (20, 'Coffee', 200.0, 'ml', 3),
       (20, 'Sugar', 100.0, 'Grams', 4),
       (20, 'Eggs', 3.0, 'Pieces', 5);
-- --------------------
-- Recipe No. 21
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           21, 5, '2023-10-01 00:00:00', '2023-10-01 00:00:00', 'Steak and Potatoes',
           'Classic meat and potatoes dish.', 10, 20, 2,
           '1. Grill the steak to your desired doneness.\n2. Bake the potatoes until tender.\n3. Serve with a side of vegetables.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (21, 1), (21, 9);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (21, 'Steak', 1.0, 'Piece', 1),
       (21, 'Potatoes', 2.0, 'Pieces', 2),
       (21, 'Mixed Vegetables', 200.0, 'Grams', 3);

-- --------------------
-- Recipe No. 22
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           22, 4, '2023-09-15 00:00:00', '2023-09-15 00:00:00', 'Chicken Alfredo Pasta',
           'Creamy pasta with grilled chicken.', 15, 30, 2,
           '1. Grill the chicken and set aside.\n2. Cook pasta.\n3. Prepare alfredo sauce. \n4. Toss pasta in alfredo sauce and top with chicken.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (22, 5), (22, 10);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (22, 'Chicken Breast', 1.0, 'Piece', 1),
       (22, 'Pasta', 200.0, 'Grams', 2),
       (22, 'Cream', 200.0, 'ml', 3),
       (22, 'Parmesan', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 23
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           23, 4, '2024-01-10 00:00:00', '2024-01-10 00:00:00', 'Mushroom Risotto',
           'Creamy and delightful Italian classic.', 10, 30, 2,
           '1. Sauté the mushrooms in butter.\n2. In another pot, cook arborio rice.\n3. Combine the two and add broth gradually.\n4. Stir continuously until creamy.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (23, 3), (23, 11);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (23, 'Mushrooms', 300.0, 'Grams', 1),
       (23, 'Arborio Rice', 200.0, 'Grams', 2),
       (23, 'Chicken Broth', 400.0, 'ml', 3),
       (23, 'Butter', 50.0, 'Grams', 4),
       (23, 'Parmesan', 100.0, 'Grams', 5);

-- --------------------
-- Recipe No. 24
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           24, 5, '2023-10-20 00:00:00', '2023-10-20 00:00:00', 'Beef Stir Fry',
           'Quick and easy asian-style beef stir fry.', 10, 10, 1,
           '1. Marinate beef with sauce and spices. \n2. Fry beef until browned and add vegetables.\n3. Serve hot with rice.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (24, 2), (24, 6);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (24, 'Beef', 500.0, 'Grams', 1),
       (24, 'Vegetables', 200.0, 'Grams', 2),
       (24, 'Soy Sauce', 50.0, 'ml', 3);

-- --------------------
-- Recipe No. 25
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           25, 3, '2023-11-20 00:00:00', '2023-11-20 00:00:00', 'Baked Salmon',
           'Delicious oven-baked salmon fillets.', 10, 20, 2,
           '1. Marinate salmon and refrigerator for an hour.\n2. Bake in a preheated oven at 200C.\n3. Serve with lemon.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (25, 3), (25, 7);
INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (25, 'Salmon Fillets', 400.0, 'Grams', 1),
       (25, 'Olive Oil', 30.0, 'ml', 2),
       (25, 'Lemon', 1.0, 'Pieces', 4),
       (25, 'Dill', 10.0, 'Grams', 3);
-- --------------------
-- Recipe No. 26
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           26, 1, '2023-12-15 00:00:00', '2023-12-15 00:00:00', 'Cheese Pizza',
           'Simple and classic cheese pizza.', 15, 20, 1,
           '1. Spread pizza sauce on dough.\n2. Sprinkle a generous portion of cheese.\n3. Bake in a preheated oven at 200C until cheese is melted and slightly browned.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (26, 5), (26, 12);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (26, 'Pizza Dough', 1.0, 'Piece', 1),
       (26, 'Pizza Sauce', 100.0, 'ml', 2),
       (26, 'Cheese', 200.0, 'Grams', 3);


-- --------------------
-- Recipe No. 27
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           27, 3, '2024-01-15 00:00:00', '2024-01-15 00:00:00', 'Spinach and Artichoke Dip',
           'Creamy, cheesy and easy party appetizer.', 10, 20, 1,
           '1. Combine all ingredients in a bowl.\n2. Bake in a preheated oven until melted and slightly browned.\n3. Serve hot with bread sticks.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (27, 7), (27, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (27, 'Spinach', 200.0, 'Grams', 1),
       (27, 'Artichoke Hearts', 200.0, 'Grams', 2),
       (27, 'Cream Cheese', 200.0, 'Grams', 3),
       (27, 'Mozzarella Cheese', 100.0, 'Grams', 4),
       (27, 'Parmesan Cheese', 100.0, 'Grams', 5);


-- --------------------
-- Recipe No. 28
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           28, 5, '2024-02-01 00:00:00', '2024-02-01 00:00:00', 'Chicken Caesar Salad',
           'Classic salad with grilled chicken.', 10, 20, 1,
           '1. Grill chicken and slice.\n2. Toss lettuce in Caesar dressing.\n3. Top with chicken, croutons and grated Parmesan.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (28, 1), (28, 6);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (28, 'Chicken Breast', 1.0, 'Piece', 1),
       (28, 'Romaine Lettuce', 1.0, 'Head', 2),
       (28, 'Caesar Dressing', 100.0, 'ml', 3),
       (28, 'Croutons', 100.0, 'Grams', 4),
       (28, 'Parmesan', 50.0, 'Grams', 5);
-- --------------------
-- Recipe No. 29
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           29, 2, '2024-02-15 00:00:00', '2024-02-15 00:00:00', 'Chocolate Mousse',
           'Rich and airy chocolate dessert.', 20, 120, 2,
           '1. Melt chocolate and mix with yolks.\n2. Whip cream to soft peaks.\n3. Fold cream into chocolate mixture.\n4. Chill for at least 2 hours or until set.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (29, 2), (29, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (29, 'Dark Chocolate', 200.0, 'Grams', 1),
       (29, 'Egg Yolks', 4.0, 'Pieces', 2),
       (29, 'Heavy Cream', 200.0, 'ml', 3),
       (29, 'Sugar', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 30
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           30, 1, '2024-02-22 00:00:00', '2024-02-22 00:00:00', 'Black Forest Cake',
           'Delicious layered chocolate and cherry cake.', 30, 45, 2,
           '1. Prepare chocolate cake and cut into layers.\n2. Layer cake with whipped cream and cherries.\n3. Decorate with more whipped cream and cherries.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (30, 2), (30, 7);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (30, 'Chocolate Cake Mix', 1.0, 'Box', 1),
       (30, 'Cherries', 200.0, 'Grams', 2),
       (30, 'Whipping Cream', 200.0, 'ml', 3),
       (30, 'Sugar', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 31
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           31, 2, '2024-03-01 00:00:00', '2024-03-01 00:00:00', 'Classic Margherita Pizza',
           'Simple yet flavorful Italian pizza.', 15, 12, 1,
           '1. Roll out the pizza dough.\n2. Spread the sauce evenly on the dough.\n3. Sprinkle mozzarella cheese and add basil leaves.\n4. Bake until crust is golden and cheese is bubbly.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (31, 4), (31, 10);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (31, 'Pizza Dough', 1.0, 'Piece', 1),
       (31, 'Tomato Sauce', 100.0, 'ml', 2),
       (31, 'Mozzarella Cheese', 200.0, 'Grams', 3),
       (31, 'Basil Leaves', 10.0, 'Grams', 4);

-- --------------------
-- Recipe No. 32
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           32, 3, '2024-03-20 00:00:00', '2024-03-20 00:00:00', 'Spicy Dynamite Shrimp',
           'Crispy fried shrimp coated in spicy sauce.', 20, 15, 2,
           '1. Fry the shrimp until golden brown.\n2. In a separate bowl, mix the sauce ingredients.\n3. Toss the fried shrimp in the sauce until well coated.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (32, 3), (32, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (32, 'Shrimp', 500.0, 'Grams', 1),
       (32, 'Flour', 100.0, 'Grams', 2),
       (32, 'Egg', 1.0, 'Piece', 3),
       (32, 'Chili Sauce', 50.0, 'ml', 4),
       (32, 'Mayonnaise', 50.0, 'Grams', 5);

-- --------------------
-- Recipe No. 33
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           33, 4, '2024-04-01 00:00:00', '2024-04-01 00:00:00', 'Vegetable Lasagna',
           'Hearty lasagna with layers of cooked vegetables.', 30, 60, 2,
           '1. Cook vegetables in a pan.\n2. Layer lasagna sheets, vegetables, and cheese in a baking dish.\n3. Repeat the layers until all ingredients are used.\n4. Bake in a preheated oven at 180C until golden and bubbly.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (33, 7), (33, 11);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (33, 'Lasagna Sheets', 12.0, 'Pieces', 1),
       (33, 'Mixed Vegetables', 500.0, 'Grams', 2),
       (33, 'Cheese', 200.0, 'Grams', 3),
       (33, 'Tomato Sauce', 200.0, 'ml', 4),
       (33, 'Olive Oil', 30.0, 'ml', 5);

-- --------------------
-- Recipe No. 34
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           34, 1, '2024-04-15 00:00:00', '2024-04-15 00:00:00', 'Homemade Chicken Noodle Soup',
           'Comforting and hearty chicken noodle soup.', 15, 45, 2,
           '1. Sauté vegetables in a large pot.\n2. Add chicken and water to the pot and simmer.\n3. Add noodles to the pot and cook until tender.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (34, 1), (34, 7);

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

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           35, 5, '2024-05-01 00:00:00', '2024-05-01 00:00:00', 'Vegetarian Tacos',
           'Flavorful and hearty vegetarian tacos.', 15, 15, 1,
           '1. Sauté vegetables and beans in a pan with spices.\n2. Fill taco shells with vegetables mix.\n3. Top with salsa and guacamole.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (35, 2), (35, 8);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (35, 'Taco Shells', 6.0, 'Pieces', 1),
       (35, 'Mixed Vegetables', 400.0, 'Grams', 2),
       (35, 'Black Beans', 200.0, 'Grams', 3),
       (35, 'Salsa', 100.0, 'ml', 4),
       (35, 'Guacamole', 100.0, 'Grams', 5);

-- --------------------
-- Recipe No. 36
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           36, 2, '2024-05-15 00:00:00', '2024-05-15 00:00:00', 'Banana Bread',
           'Moist and delicious bread with ripe bananas.', 15, 60, 1,
           '1. Combine mashed bananas, sugar, egg, and melted butter.\n2. Add in the dry ingredients and mix just until flour is incorporated.\n3. Bake in a preheated oven until a tester comes out clean.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (36, 8), (36, 1);

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

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           37, 3, '2024-06-01 00:00:00', '2024-06-01 00:00:00', 'Egg Fried Rice',
           'Simple and satisfying egg fried rice.', 10, 10, 1,
           '1. Scramble the egg in a pan and set aside.\n2. Sauté vegetables in the same pan.\n3. Add cooked rice, scrambled egg and soy sauce to the pan and stir thoroughly.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (37, 5), (37, 10);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (37, 'Eggs', 2.0, 'Pieces', 1),
       (37, 'Cooked Rice', 200.0, 'Grams', 2),
       (37, 'Vegetables', 100.0, 'Grams', 3),
       (37, 'Soy Sauce', 30.0, 'ml', 4);


-- --------------------
-- Recipe No. 38
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           38, 4, '2024-06-15 00:00:00', '2024-06-15 00:00:00', 'Classic Caesar Salad',
           'Crispy romaine lettuce with creamy Caesar dressing.', 10, 0, 1,
           '1. Toss romaine lettuce in Caesar dressing.\n2. Top with croutons and grated Parmesan.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (38, 1), (38, 6);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (38, 'Romaine Lettuce', 1.0, 'Head', 1),
       (38, 'Caesar Dressing', 100.0, 'ml', 2),
       (38, 'Croutons', 100.0, 'Grams', 3),
       (38, 'Parmesan', 50.0, 'Grams', 4);

-- --------------------
-- Recipe No. 39
-- --------------------

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           39, 1, '2024-06-20 00:00:00', '2024-06-20 00:00:00', 'Classic Greek Salad',
           'Refreshing salad with fresh vegetables and feta cheese.', 15, 0, 1,
           '1. Cut all the vegetables and feta into bite-size pieces.\n2. Combine all ingredients in a large salad bowl.\n3. Drizzle with olive oil and season with salt and pepper.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (39, 1), (39, 6);

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

INSERT INTO recipes (
    id, user_id, created_at, updated_at, title, headline,
    preparation_time, cook_time, difficulty_level_id, steps)
VALUES (
           40, 5, '2024-07-10 00:00:00', '2024-07-10 00:00:00', 'French Onion Soup',
           'Rich and flavorful onion soup topped with cheesy toast.', 15, 45, 2,
           '1. Caramelize the onions in a pot. \n2. Add beef broth to the pot and simmer.\n3. Pour soup into ovenproof bowls, top with a slice of bread and shredded Gruyère.\n4. Broil in a preheated oven until cheese is melted and bubbly.');

INSERT INTO recipe_categories (recipe_id, category_id)
VALUES (40, 1), (40, 7);

INSERT INTO ingredients (recipe_id, name, amount, unit, order_no)
VALUES (40, 'Onions', 2.0, 'Pieces', 1),
       (40, 'Beef Broth', 400.0, 'ml', 2),
       (40, 'Bread', 4.0, 'Slices', 3),
       (40, 'Gruyère Cheese', 100.0, 'Grams', 4);