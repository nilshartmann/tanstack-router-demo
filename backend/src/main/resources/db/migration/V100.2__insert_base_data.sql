-- @formatter:off
INSERT INTO users (username, password, fullname) VALUES('waldemar','waldemar', 'Waldemar Vasu');
INSERT INTO users (username, password, fullname) VALUES('karl','karl', 'Karl Marx');
INSERT INTO users (username, password, fullname) VALUES('alessa','alessa', 'Alessa Bradley');
INSERT INTO users (username, password, fullname) VALUES('lauren','lauren', 'Lauren Jones');
INSERT INTO users (username, password, fullname) VALUES('nils','nils', 'Nils');
-- @formatter:on

-- -- @formatter:off
-- INSERT INTO difficulty_levels (id, name) VALUES (1, 'Easy');
-- INSERT INTO difficulty_levels (id, name) VALUES (2, 'Medium');
-- INSERT INTO difficulty_levels (id, name) VALUES (3, 'Hard');
-- INSERT INTO difficulty_levels (id, name) VALUES (4, 'Expert');
-- -- @formatter:on

-- -- @formatter:off
INSERT INTO meal_types (id, name) VALUES (1, 'Breakfast');
INSERT INTO meal_types (id, name) VALUES (2, 'Lunch');
INSERT INTO meal_types (id, name) VALUES (3, 'Dinner');
INSERT INTO meal_types (id, name) VALUES (4, 'Snacks');
INSERT INTO meal_types (id, name) VALUES (5, 'Desserts');
INSERT INTO meal_types (id, name) VALUES (6, 'Drinks');
INSERT INTO meal_types (id, name) VALUES (7, 'Appetizers');
-- -- @formatter:on

-- @formatter:off
INSERT INTO category_types (id, name, icon) VALUES (1, 'Dietary', 'fa-solid fa-wheat-awn');
INSERT INTO category_types (id, name, icon) VALUES (2, 'Cuisine Type', 'fa-solid fa-flag');
INSERT INTO category_types (id, name, icon) VALUES (3, 'Audience', 'fa-solid fa-people-group');
INSERT INTO category_types (id, name, icon) VALUES (4, 'Difficulty', 'fa-solid fa-utensils');
-- @formatter:on

INSERT INTO public.categories (category_type_id, title, description)
VALUES (1, 'Vegan', 'Recipes suitable for vegans, with no animal products.'),
       (1, 'Vegetarian', 'Vegetarian recipes that may include dairy and eggs, but no meat.'),
       (1, 'Gluten Free', 'Recipes suitable for those on a gluten-free diet.'),
       (1, 'Dairy Free', 'Recipes free from dairy products.'),

       (2, 'Italian', 'Recipes with Italian origins or influence.'),
       (2, 'Asian', 'Traditional and inspired recipes from across Asia.'),
       (2, 'Mexican', 'Features recipes originating from Mexico.'),
       (2, 'Mediterranean', 'Recipes from the Mediterranean region.'),

       (3, 'For Beginners', 'Simple recipes suitable for cooking beginners.'),
       (3, 'For Guests', 'Impressive recipes perfect for hosting visitors.'),
       (3, 'For Kids', 'Kid-friendly recipes that children will love.'),
       (3, 'For Two', 'Perfectly portioned recipes for a pair.'),

       (4, 'Easy', 'Suitable for beginners, requires minimal ingredients and steps.'),
       (4, 'Medium', 'Requires a bit more time and effort, could involve slightly complex procedures or more ingredients.'),
       (4, 'Hard', 'Requires advanced cooking skills, might involve intricate processes, multiple steps, or exotic ingredients.'),
       (4, 'Expert', 'For seasoned cooks and professionals, may involve complex techniques, time-intensive processes, and precision.')
;
