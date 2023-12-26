-- @formatter:off
INSERT INTO users (username, password, fullname) VALUES('waldemar','waldemar', 'Waldemar Vasu');
INSERT INTO users (username, password, fullname) VALUES('karl','karl', 'Karl Marx');
INSERT INTO users (username, password, fullname) VALUES('alessa','alessa', 'Alessa Bradley');
INSERT INTO users (username, password, fullname) VALUES('lauren','lauren', 'Lauren Jones');
INSERT INTO users (username, password, fullname) VALUES('nils','nils', 'Nils');
-- @formatter:on



-- @formatter:off
INSERT INTO categories (name) VALUES ('Appetizers');
INSERT INTO categories (name) VALUES ('Main Courses');
INSERT INTO categories (name) VALUES ('Desserts');
INSERT INTO categories (name) VALUES ('Beverages');
INSERT INTO categories (name) VALUES ('Vegetarian');
INSERT INTO categories (name) VALUES ('Vegan');
INSERT INTO categories (name) VALUES ('Gluten-free');
INSERT INTO categories (name) VALUES ('Dairy-free');
INSERT INTO categories (name) VALUES ('Low Carb');
INSERT INTO categories (name) VALUES ('Paleo');
-- @formatter:on

-- mostly generated with ChatGPT:
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (40, 'French Onion Soup', e'### Ingredients\\n- Yellow onions, thinly sliced\\n- Butter\\n- Beef broth\\n- Dry white wine\\n- Baguette, sliced\\n- Gruyère cheese, shredded\\n- Salt and pepper\\n\\n### Cooking Steps\\n1. Sauté thinly sliced onions in butter until caramelized.
2. Pour in beef broth and white wine; simmer.
3. Toast baguette slices.
4. Ladle soup into oven-safe bowls, top with a slice of baguette.
5. Sprinkle shredded Gruyère cheese on top.
6. Broil until cheese is melted and golden brown.
7. Season with salt and pepper to taste.', '2023-03-26 08:30:00.000000', '2023-03-26 08:30:00.000000', 1,
        'Embark on a flavor adventure with Kimchi Fried Rice — a delicious blend of fried rice, spicy kimchi, and savory vegetables, creating a Korean-inspired culinary delight.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (1, 'Mango Avocado Salsa', e'## Ingredients\\n- 2 ripe mangoes\\n- 2 avocados\\n- 1 red onion, finely diced\\n- Fresh cilantro, chopped\\n- Lime juice\\n- Salt and pepper\\n\\n## Cooking Steps\\n1. Dice mangoes and avocados.
2. Finely dice red onion.
3. Chop fresh cilantro.
4. Mix all ingredients in a bowl.
5. Add lime juice, salt, and pepper to taste.', '2023-02-08 13:00:00.000000', '2023-02-08 13:00:00.000000', 1,
        'Dive into a tropical sensation with the Mango Avocado Salsa — a vibrant blend of ripe mangoes, creamy avocados, and zesty lime juice that will transport your taste buds to paradise.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (6, 'Sesame Ginger Noodles', e'## Ingredients\\n- Egg noodles\\n- Sesame oil\\n- Soy sauce\\n- Ginger, minced\\n- Garlic, minced\\n- Green onions, sliced\\n\\n## Cooking Steps\\n1. Cook egg noodles according to package instructions.
2. In a pan, sauté ginger and garlic in sesame oil.
3. Add cooked noodles and soy sauce. Toss well.
4. Garnish with green onions.', '2023-02-13 13:30:00.000000', '2023-02-13 13:30:00.000000', 1,
        'Take your taste buds on an Asian adventure with Sesame Ginger Noodles — a tantalizing fusion of egg noodles, savory soy sauce, and the aromatic kick of fresh ginger and garlic.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (10, 'Cucumber Avocado Rolls', e'## Ingredients\\n- Cucumbers, thinly sliced\\n- Avocado, mashed\\n- Carrots, julienned\\n- Sesame seeds\\n- Soy sauce for dipping\\n\\n## Cooking Steps\\n1. Lay out cucumber slices.
2. Spread avocado on each slice.
3. Add julienned carrots and sprinkle sesame seeds.
4. Roll up and secure with toothpicks.
5. Serve with soy sauce.', '2023-02-24 08:30:00.000000', '2023-02-24 08:30:00.000000', 1,
        'Refresh your day with Lemon Poppy Seed Loaf — a zesty symphony of fresh lemon zest, nutty poppy seeds, and moist Greek yogurt, creating a citrus-infused treat thats perfect for any occasion.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (15, 'Tomato Basil Bruschetta', e'## Ingredients\\n- Baguette, sliced\\n- Tomatoes, diced\\n- Fresh basil, chopped\\n- Garlic, minced\\n- Balsamic glaze\\n- Olive oil\\n\\n## Cooking Steps\\n1. Toast baguette slices in the oven.
2. Mix tomatoes, basil, garlic, and olive oil.
3. Spoon the mixture onto toasted baguette.
4. Drizzle with balsamic glaze.', '2023-03-01 11:45:00.000000', '2023-03-01 11:45:00.000000', 1,
        'Take a flavor trip to the East with Teriyaki Salmon Bowls — succulent salmon glazed in teriyaki sauce, served on a bed of fluffy rice, and accompanied by stir-fried vegetables.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (20, 'Mango Coconut Rice', e'## Ingredients\\n- Basmati rice\\n- Mango, diced\\n- Coconut milk\\n- Lime juice\\n- Fresh cilantro, chopped\\n- Cashews, toasted\\n\\n## Cooking Steps\\n1. Cook rice with coconut milk.
2. Fold in diced mango, lime juice, and cilantro.
3. Top with toasted cashews.', '2023-03-06 13:00:00.000000', '2023-03-06 13:00:00.000000', 1,
        'Tantalize your taste buds with Spicy Mango Salsa — ripe mangoes, red onion, jalapeño, cilantro, and lime juice come together for a vibrant and spicy salsa.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (25, 'Spinach and Artichoke Stuffed Mushrooms', e'## Ingredients\\n- Large mushrooms\\n- Spinach, chopped\\n- Artichoke hearts, diced\\n- Cream cheese\\n- Parmesan cheese\\n- Garlic, minced\\n\\n## Cooking Steps\\n1. Remove stems from mushrooms.
2. Sauté spinach, artichoke hearts, and garlic.
3. Mix cream cheese and Parmesan; add sautéed mixture.
4. Stuff mushrooms and bake until golden.', '2023-03-11 08:30:00.000000', '2023-03-11 08:30:00.000000', 1,
        'Transport yourself to the tropics with Coconut Shrimp Curry — succulent shrimp cooked in a coconut milk-based curry sauce, infused with aromatic spices.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (30, 'Cajun Shrimp Pasta', e'## Ingredients\\n- Linguine pasta\\n- Shrimp, peeled and deveined\\n- Cajun seasoning\\n- Bell peppers, sliced\\n- Cream\\n- Parmesan cheese\\n\\n## Cooking Steps\\n1. Cook linguine pasta al dente.
2. Season shrimp with Cajun seasoning and sauté.
3. Add sliced bell peppers, cream, and Parmesan.
4. Toss with cooked pasta.', '2023-03-16 11:45:00.000000', '2023-03-16 11:45:00.000000', 1,
        'Elevate your dessert game with Matcha Green Tea Cheesecake — a velvety cheesecake infused with the earthy and vibrant flavors of matcha green tea.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (35, 'Mushroom and Spinach Risotto', e'## Ingredients\\n- Arborio rice\\n- Mushrooms, sliced\\n- Spinach, chopped\\n- Vegetable broth\\n- White wine\\n- Parmesan cheese\\n\\n## Cooking Steps\\n1. Sauté mushrooms and spinach in a pan.
2. Add Arborio rice and cook until translucent.
3. Pour in white wine and simmer.
4. Gradually add vegetable broth until rice is cooked.
5. Stir in Parmesan cheese.', '2023-03-21 13:00:00.000000', '2023-03-21 13:00:00.000000', 1,
        'Discover the joy of Balsamic Glazed Brussels Sprouts — crispy roasted Brussels sprouts coated in a sweet and tangy balsamic glaze.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (7, 'Vegetarian Tacos', e'## Ingredients\\n- Corn tortillas\\n- Black beans\\n- Avocado, sliced\\n- Salsa\\n- Shredded lettuce\\n- Lime wedges\\n\\n## Cooking Steps\\n1. Warm corn tortillas.
2. Fill with black beans, avocado, salsa, and lettuce.
3. Squeeze lime over tacos before serving.', '2023-02-14 15:45:00.000000', '2023-02-14 15:45:00.000000', 2,
        'Spice up your taco night with Vegetarian Tacos — a fiesta of corn tortillas filled with black beans, creamy avocado, zesty salsa, and crisp lettuce, delivering a burst of flavors in every bite.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (11, 'Pesto Chicken Penne', e'## Ingredients\\n- Chicken breasts, sliced\\n- Penne pasta\\n- Pesto sauce\\n- Cherry tomatoes, halved\\n- Parmesan cheese\\n- Basil leaves\\n\\n## Cooking Steps\\n1. Sauté sliced chicken until cooked.
2. Cook penne pasta al dente; drain.
3. Mix pasta, chicken, pesto, tomatoes, and Parmesan.
4. Garnish with fresh basil.', '2023-02-25 10:45:00.000000', '2023-02-25 10:45:00.000000', 2,
        'Savor the rich flavors of French Onion Soup — caramelized yellow onions, a savory broth, and melted Gruyère cheese on a toasted baguette, creating a classic comfort dish.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (26, 'Honey Mustard Glazed Salmon', e'## Ingredients\\n- Salmon fillets\\n- Dijon mustard\\n- Honey\\n- Garlic powder\\n- Lemon juice\\n- Fresh dill\\n\\n## Cooking Steps\\n1. Mix Dijon mustard, honey, garlic powder, and lemon juice.
2. Coat salmon with the mixture and let marinate.
3. Bake until salmon is cooked.
4. Garnish with fresh dill.', '2023-03-12 10:45:00.000000', '2023-03-12 10:45:00.000000', 2,
        'Embrace the autumn spirit with Pumpkin Ravioli — delicate pasta parcels filled with a savory pumpkin and ricotta filling, served with a sage-infused butter sauce.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (31, 'Mint Chocolate Chip Smoothie Bowl', e'## Ingredients\\n- Frozen bananas\\n- Spinach\\n- Almond milk\\n- Mint extract\\n- Dark chocolate chips\\n- Granola\\n\\n## Cooking Steps\\n1. Blend bananas, spinach, almond milk, and mint extract.
2. Pour into a bowl and top with chocolate chips and granola.', '2023-03-17 14:00:00.000000',
        '2023-03-17 14:00:00.000000', 2,
        'Take a culinary journey with Moroccan Spiced Couscous — fluffy couscous infused with aromatic spices, dried fruits, and toasted nuts.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (21, 'Lemon Raspberry Cheesecake Bars', e'## Ingredients\\n- Graham cracker crust\\n- Cream cheese\\n- Sugar\\n- Lemon juice\\n- Fresh raspberries\\n- Whipped cream\\n\\n## Cooking Steps\\n1. Mix cream cheese, sugar, and lemon juice.
2. Layer over graham cracker crust.
3. Top with fresh raspberries.
4. Chill and garnish with whipped cream.', '2023-03-07 15:15:00.000000', '2023-03-07 15:15:00.000000', 2,
        'Bring the flavors of Italy to your kitchen with Margherita Pizza — a simple yet delightful combination of fresh tomatoes, mozzarella, basil, and a drizzle of olive oil.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (36, 'Protein-Packed Chickpea Salad', e'## Ingredients\\n- Chickpeas, cooked\\n- Cherry tomatoes, halved\\n- Cucumber, diced\\n- Red onion, finely chopped\\n- Feta cheese, crumbled\\n- Greek dressing\\n\\n## Cooking Steps\\n1. Combine chickpeas, tomatoes, cucumber, and red onion.
2. Toss with feta cheese and Greek dressing.
3. Chill before serving.', '2023-03-22 15:15:00.000000', '2023-03-22 15:15:00.000000', 2,
        'Ignite your senses with Thai Basil Beef Stir-Fry — tender strips of beef, colorful vegetables, and aromatic Thai basil stir-fried to perfection.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (16, 'Cinnamon Raisin Overnight Oats', e'## Ingredients\\n- Rolled oats\\n- Almond milk\\n- Raisins\\n- Cinnamon\\n- Maple syrup\\n- Chopped nuts\\n\\n## Cooking Steps\\n1. Combine oats, almond milk, raisins, and cinnamon.
2. Sweeten with maple syrup.
3. Refrigerate overnight.
4. Top with chopped nuts before serving.', '2023-03-02 14:00:00.000000', '2023-03-02 14:00:00.000000', 2,
        'Experience the freshness of Caprese Salad — juicy tomatoes, creamy mozzarella, and fragrant basil drizzled with balsamic glaze, a simple yet exquisite dish.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (2, 'Quinoa and Black Bean Salad', e'## Ingredients\\n- 1 cup quinoa, cooked\\n- 1 can black beans, drained and rinsed\\n- Cherry tomatoes, halved\\n- Red onion, diced\\n- Cumin\\n- Lime vinaigrette\\n\\n## Cooking Steps\\n1. Cook quinoa as per package instructions.
2. Rinse and drain black beans.
3. Halve cherry tomatoes and dice red onion.
4. Mix quinoa, black beans, tomatoes, and red onion in a bowl.
5. Add cumin and lime vinaigrette. Toss well.', '2023-02-09 14:30:00.000000', '2023-02-09 14:30:00.000000', 2,
        'Elevate your lunch with the Quinoa and Black Bean Salad — a colorful medley of protein-packed quinoa, hearty black beans, and a burst of freshness from cherry tomatoes and lime vinaigrette.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (17, 'Teriyaki Veggie Skewers', e'## Ingredients\\n- Bell peppers, diced\\n- Zucchini, sliced\\n- Cherry tomatoes\\n- Red onion, wedges\\n- Teriyaki marinade\\n- Skewers\\n\\n## Cooking Steps\\n1. Marinate veggies in teriyaki sauce.
2. Thread onto skewers.
3. Grill or bake until tender.', '2023-03-03 16:15:00.000000', '2023-03-03 16:15:00.000000', 3,
        'Warm your soul with Butternut Squash Risotto — Arborio rice cooked to creamy perfection with roasted butternut squash, Parmesan cheese, and a hint of sage.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (27, 'Caprese Skewers with Balsamic Glaze', e'## Ingredients\\n- Cherry tomatoes\\n- Fresh mozzarella balls\\n- Basil leaves\\n- Balsamic glaze\\n- Olive oil\\n- Salt and pepper\\n\\n## Cooking Steps\\n1. Thread tomatoes, mozzarella, and basil on skewers.
2. Drizzle with balsamic glaze and olive oil.
3. Season with salt and pepper.', '2023-03-13 13:00:00.000000', '2023-03-13 13:00:00.000000', 3,
        'Ignite your taste buds with Buffalo Cauliflower Bites — crispy cauliflower florets coated in a spicy buffalo sauce, served with a cool and tangy ranch dip.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (32, 'BBQ Chicken Pizza', e'## Ingredients\\n- Pizza dough\\n- BBQ sauce\\n- Cooked chicken, shredded\\n- Red onion, thinly sliced\\n- Mozzarella cheese\\n- Cilantro, chopped\\n\\n## Cooking Steps\\n1. Roll out pizza dough.
2. Spread BBQ sauce and top with chicken, onion, and cheese.
3. Bake until crust is golden.
4. Garnish with chopped cilantro.', '2023-03-18 16:15:00.000000', '2023-03-18 16:15:00.000000', 3,
        'Experience the warmth of Lentil Soup — hearty lentils, vegetables, and aromatic spices simmered to perfection for a comforting and nutritious bowl.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (8, 'Blueberry Almond Muffins', e'## Ingredients\\n- 2 cups almond flour\\n- Eggs\\n- Maple syrup\\n- Baking powder\\n- Blueberries\\n- Almond extract\\n\\n## Cooking Steps\\n1. Mix almond flour, eggs, syrup, and baking powder.
2. Fold in blueberries and almond extract.
3. Bake in muffin cups until golden brown.', '2023-02-15 08:30:00.000000', '2023-02-15 08:30:00.000000', 3,
        'Rise and shine with Blueberry Almond Muffins — a heavenly blend of almond flour, juicy blueberries, and a touch of sweetness that will make your mornings a delightful affair.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (3, 'Pumpkin Spice Pancakes', e'## Ingredients\\n- 1 cup pumpkin puree\\n- 1 1/2 cups flour\\n- 1 tablespoon sugar\\n- 1 teaspoon baking powder\\n- Cinnamon and nutmeg\\n- Maple syrup\\n\\n## Cooking Steps\\n1. In a bowl, mix pumpkin puree, flour, sugar, baking powder, and spices.
2. Heat a pan and pour batter to make pancakes.
3. Cook until bubbles form, then flip.
4. Serve with maple syrup.', '2023-02-10 16:00:00.000000', '2023-02-10 16:00:00.000000', 3,
        'Fall in love with breakfast again with Pumpkin Spice Pancakes — a stack of fluffy goodness infused with the warmth of pumpkin puree, cinnamon, and a drizzle of maple syrup.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (37, 'Coconut Curry Butternut Squash Soup', e'## Ingredients\\n- Butternut squash, cubed\\n- Coconut milk\\n- Curry powder\\n- Onion, chopped\\n- Vegetable broth\\n- Fresh cilantro\\n\\n## Cooking Steps\\n1. Sauté onion until softened.
2. Add butternut squash and curry powder.
3. Pour in coconut milk and vegetable broth.
4. Simmer until squash is tender.
5. Garnish with fresh cilantro.', '2023-03-23 09:30:00.000000', '2023-03-23 09:30:00.000000', 3,
        'Treat yourself to Chocolate Covered Strawberry Crepes — delicate crepes filled with fresh strawberries and drizzled with melted chocolate.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (22, 'Crispy Tofu Bowl', e'## Ingredients\\n- Extra-firm tofu, cubed\\n- Brown rice\\n- Broccoli, steamed\\n- Carrots, julienned\\n- Soy sauce\\n- Sriracha\\n\\n## Cooking Steps\\n1. Bake tofu until crispy.
2. Cook brown rice and steam broccoli.
3. Assemble bowl with tofu, rice, veggies, and sauces.', '2023-03-08 09:30:00.000000', '2023-03-08 09:30:00.000000', 3,
        'Start your day right with Acai Berry Smoothie Bowls — a blend of acai berries, banana, and coconut milk topped with granola, berries, and a dollop of almond butter.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (12, 'Berry Quinoa Parfait', e'## Ingredients\\n- Cooked quinoa\\n- Mixed berries\\n- Greek yogurt\\n- Honey\\n- Almonds, sliced\\n- Mint leaves\\n\\n## Cooking Steps\\n1. Layer quinoa, berries, and yogurt in a glass.
2. Drizzle with honey and top with almonds.
3. Garnish with fresh mint leaves.', '2023-02-26 13:00:00.000000', '2023-02-26 13:00:00.000000', 3,
        'Embrace the Mediterranean with Greek Salad — a crisp ensemble of cucumbers, tomatoes, olives, and feta cheese, drizzled with olive oil and sprinkled with oregano.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (9, 'Garlic Butter Shrimp Pasta', e'## Ingredients\\n- Linguine pasta\\n- Shrimp, peeled and deveined\\n- Butter\\n- Garlic, minced\\n- Cherry tomatoes, halved\\n- Fresh parsley, chopped\\n\\n## Cooking Steps\\n1. Cook linguine pasta al dente.
2. Sauté shrimp and garlic in butter.
3. Add tomatoes and cooked pasta; toss.
4. Garnish with fresh parsley.', '2023-02-16 10:00:00.000000', '2023-02-16 10:00:00.000000', 4,
        'Dive into a seafood extravaganza with Garlic Butter Shrimp Pasta — succulent shrimp, linguine pasta, and a garlic-infused buttery sauce that promises a taste of coastal elegance.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (13, 'Spaghetti Aglio e Olio', e'## Ingredients\\n- Spaghetti\\n- Garlic, thinly sliced\\n- Red pepper flakes\\n- Olive oil\\n- Parsley, chopped\\n- Grated Parmesan cheese\\n\\n## Cooking Steps\\n1. Cook spaghetti al dente; reserve some pasta water.
2. Sauté garlic and red pepper flakes in olive oil.
3. Toss cooked pasta in the pan, adding reserved water.
4. Garnish with parsley and Parmesan.', '2023-02-27 15:15:00.000000', '2023-02-27 15:15:00.000000', 4,
        'Fuel your day with Protein-Packed Breakfast Burritos — a hearty combination of scrambled eggs, black beans, avocado, and salsa wrapped in a warm tortilla.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (18, 'Avocado Chocolate Mousse', e'## Ingredients\\n- Ripe avocados\\n- Cocoa powder\\n- Maple syrup\\n- Vanilla extract\\n- Almond milk\\n- Dark chocolate shavings\\n\\n## Cooking Steps\\n1. Blend avocados, cocoa powder, and syrup.
2. Add vanilla extract and almond milk.
3. Garnish with chocolate shavings.', '2023-03-04 08:30:00.000000', '2023-03-04 08:30:00.000000', 4,
        'Indulge in a guilt-free delight with Chocolate Avocado Mousse — ripe avocados blended with cocoa powder, honey, and vanilla extract, creating a decadent and healthy dessert.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (23, 'Strawberry Spinach Salad', e'## Ingredients\\n- Baby spinach\\n- Strawberries, sliced\\n- Feta cheese, crumbled\\n- Balsamic vinaigrette\\n- Walnuts, chopped\\n- Red onion, thinly sliced\\n\\n## Cooking Steps\\n1. Toss spinach, strawberries, feta, and walnuts.
2. Drizzle with balsamic vinaigrette.
3. Garnish with thinly sliced red onion.', '2023-03-09 11:45:00.000000', '2023-03-09 11:45:00.000000', 4,
        'Satisfy your sweet tooth with Caramel Apple Crisp — tart apples coated in a caramel sauce, topped with a crunchy oat and almond crumble, baked to perfection.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (38, 'Chia Seed Pudding Parfait', e'## Ingredients\\n- Chia seeds\\n- Almond milk\\n- Greek yogurt\\n- Fresh berries\\n- Granola\\n- Honey\\n\\n## Cooking Steps\\n1. Mix chia seeds with almond milk; refrigerate overnight.
2. Layer chia pudding, Greek yogurt, berries, and granola.
3. Drizzle with honey.', '2023-03-24 11:45:00.000000', '2023-03-24 11:45:00.000000', 4,
        'Elevate your appetizer game with Stuffed Jalapeños — spicy jalapeños stuffed with cream cheese, wrapped in bacon, and baked until golden.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (28, 'Lentil and Vegetable Curry', e'## Ingredients\\n- Lentils\\n- Mixed vegetables (carrots, peas, potatoes)\\n- Coconut milk\\n- Curry powder\\n- Onion, chopped\\n- Garlic, minced\\n\\n## Cooking Steps\\n1. Cook lentils and set aside.
2. Sauté onion and garlic until golden.
3. Add mixed vegetables and curry powder.
4. Pour in coconut milk and simmer until veggies are tender.', '2023-03-14 15:15:00.000000',
        '2023-03-14 15:15:00.000000', 4,
        'Celebrate summer with Grilled Peach Salad — sweet grilled peaches, arugula, feta cheese, and a balsamic glaze create a refreshing and vibrant salad.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (4, 'Roasted Garlic Hummus', e'## Ingredients\\n- 1 can chickpeas, drained\\n- Roasted garlic cloves\\n- Tahini\\n- Lemon juice\\n- Olive oil\\n- Paprika\\n\\n## Cooking Steps\\n1. In a food processor, blend chickpeas, roasted garlic, and tahini.
2. Add lemon juice and olive oil; blend until smooth.
3. Season with paprika and blend again.', '2023-02-11 09:45:00.000000', '2023-02-11 09:45:00.000000', 4,
        'Unleash the bold flavors of the Mediterranean with Roasted Garlic Hummus — a velvety blend of chickpeas, tahini, and roasted garlic, perfect for dipping or spreading on your favorite snack.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (33, 'Ratatouille Stuffed Bell Peppers', e'## Ingredients\\n- Bell peppers\\n- Eggplant, diced\\n- Zucchini, diced\\n- Tomatoes, diced\\n- Garlic, minced\\n- Herbs de Provence\\n\\n## Cooking Steps\\n1. Cut bell peppers in half.
2. Sauté eggplant, zucchini, and tomatoes.
3. Mix with garlic and herbs de Provence.
4. Fill bell peppers and bake until tender.', '2023-03-19 08:30:00.000000', '2023-03-19 08:30:00.000000', 4,
        'Savor the taste of Lemon Garlic Roasted Chicken — succulent roasted chicken with a zesty lemon and garlic marinade, creating a flavorful and juicy dish.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (24, 'Pumpkin Pie Smoothie', e'## Ingredients\\n- Canned pumpkin puree\\n- Banana\\n- Almond milk\\n- Maple syrup\\n- Pumpkin pie spice\\n- Ice cubes\\n\\n## Cooking Steps\\n1. Blend pumpkin puree, banana, and almond milk.
2. Sweeten with maple syrup and add pumpkin spice.
3. Add ice cubes and blend until smooth.', '2023-03-10 14:00:00.000000', '2023-03-10 14:00:00.000000', 5,
        'Delight in the comfort of Chicken Pot Pie — tender chicken, vegetables, and a creamy sauce encased in a flaky pie crust, creating a classic and wholesome dish.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (19, 'Sesame Kale Salad', e'## Ingredients\\n- Kale, chopped\\n- Sesame seeds\\n- Carrots, shredded\\n- Soy sauce\\n- Rice vinegar\\n- Sesame oil\\n\\n## Cooking Steps\\n1. Massage kale with sesame oil.
2. Add sesame seeds and shredded carrots.
3. Drizzle with soy sauce and rice vinegar.', '2023-03-05 10:45:00.000000', '2023-03-05 10:45:00.000000', 5,
        'Elevate your brunch game with Smoked Salmon Bagels — toasted bagels topped with cream cheese, smoked salmon, capers, and red onion, a luxurious and flavorful treat.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (14, 'Chickpea Salad Wraps', e'## Ingredients\\n- Chickpeas, drained\\n- Greek yogurt\\n- Dijon mustard\\n- Celery, diced\\n- Whole wheat wraps\\n- Lettuce leaves\\n\\n## Cooking Steps\\n1. Mix chickpeas, yogurt, and mustard.
2. Add diced celery; mix well.
3. Fill wraps with the mixture and lettuce.', '2023-02-28 09:30:00.000000', '2023-02-28 09:30:00.000000', 5,
        'Melt away stress with Creamy Tomato Basil Soup — ripe tomatoes, fresh basil, and a touch of cream blended into a velvety concoction thats both comforting and indulgent.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (5, 'Raspberry Chocolate Smoothie', e'## Ingredients\\n- 1 cup raspberries\\n- Chocolate protein powder\\n- Greek yogurt\\n- Almond milk\\n- Ice cubes\\n- Honey\\n\\n## Cooking Steps\\n1. Blend raspberries, protein powder, and Greek yogurt.
2. Add almond milk and ice cubes; blend until smooth.
3. Sweeten with honey as needed.', '2023-02-12 11:15:00.000000', '2023-02-12 11:15:00.000000', 5,
        'Indulge in a guilt-free treat with the Raspberry Chocolate Smoothie — a luscious concoction of sweet raspberries, rich chocolate protein, and creamy Greek yogurt for a sip of pure delight.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (34, 'Peach Basil Sangria', e'## Ingredients\\n- White wine\\n- Peaches, sliced\\n- Basil leaves\\n- Sparkling water\\n- Simple syrup\\n- Ice cubes\\n\\n## Cooking Steps\\n1. Mix white wine, peaches, and basil in a pitcher.
2. Add sparkling water and simple syrup.
3. Serve over ice.', '2023-03-20 10:45:00.000000', '2023-03-20 10:45:00.000000', 5,
        'Unwind with Lavender Honey Chamomile Tea — a soothing blend of chamomile tea infused with the floral notes of lavender and a drizzle of honey.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (39, 'Stuffed Bell Peppers with Quinoa', e'## Ingredients\\n- Bell peppers\\n- Quinoa, cooked\\n- Black beans, drained\\n- Corn kernels\\n- Salsa\\n- Shredded cheese\\n\\n## Cooking Steps\\n1. Cut bell peppers in half and remove seeds.
2. Mix quinoa, black beans, corn, and salsa.
3. Stuff peppers and top with shredded cheese.
4. Bake until cheese is melted.', '2023-03-25 14:00:00.000000', '2023-03-25 14:00:00.000000', 5,
        'Delight in the freshness of Watermelon Mint Salad — juicy watermelon cubes, fresh mint, and crumbled feta cheese create a refreshing summer salad.');
INSERT INTO recipes (id, title, content, created_at, updated_at, user_id, summary)
VALUES (29, 'Cherry Almond Energy Bites', e'## Ingredients\\n- Rolled oats\\n- Almond butter\\n- Dried cherries\\n- Almonds, chopped\\n- Honey\\n- Vanilla extract\\n\\n## Cooking Steps\\n1. Mix oats, almond butter, cherries, and almonds.
2. Add honey and vanilla extract.
3. Roll into bite-sized balls and refrigerate.', '2023-03-15 09:30:00.000000', '2023-03-15 09:30:00.000000', 5,
        'Experience the bold flavors of Cajun Chicken Alfredo — blackened chicken, fettuccine pasta, and a creamy Alfredo sauce with a Cajun kick.');

-- @formatter:off
INSERT INTO recipe_categories(recipe_id, category_id) VALUES
              (1, 1), (1, 2),
              (2, 2), (2, 3),
              (3, 3), (3, 4), (3, 5),
              (4, 5), (4, 6), (4, 7),
              (5, 6), (5, 7), (5, 8), (5, 9),
              (6, 7), (6, 8), (6, 9),
              (7, 9), (7, 10), (7, 1),
              (8, 8), (8, 9), (8, 10),
              (9, 1), (9, 2), (9, 3), (9, 4),
              (10, 10), (10, 1), (10, 2),
              (11, 2), (11, 3), (11, 4),
              (12, 3), (12, 4), (12, 5),
              (13, 4), (13, 5), (13, 6), (13, 7),
              (14, 4), (14, 5), (14, 6),
              (15, 5), (15, 6), (15, 7),
              (16, 6), (16, 7), (16, 8),
              (17, 9), (17, 10), (17, 1), (17, 2),
              (18, 7), (18, 8), (18, 9),
              (19, 9), (19, 10), (19, 1),
              (20, 8), (20, 9), (20, 10),
              (21, 8), (21, 9), (21, 10),
              (22, 10), (22, 1), (22, 2),
              (23, 1), (23, 2), (23, 3), (23, 4),
              (24, 9), (24, 10), (24, 1),
              (25, 10), (25, 1), (25, 2),
              (26, 1), (26, 2), (26, 3), (26, 4),
              (27, 3), (27, 4), (27, 5),
              (28, 5), (28, 6), (28, 7),
              (29, 3), (29, 4), (29, 5), (29, 6),
              (30, 6), (30, 7), (30, 8),
              (31, 8), (31, 9), (31, 10),
              (32, 7), (32, 8), (32, 9), (32, 10),
              (33, 10), (33, 1), (33, 2),
              (34, 2), (34, 3), (34, 4),
              (35, 4), (35, 5), (35, 6),
              (36, 6), (36, 7), (36, 8), (36, 9),
              (37, 1), (37, 2), (37, 3),
              (38, 3), (38, 4), (38, 5),
              (39, 5), (39, 6), (39, 7),
              (40, 2), (40, 3), (40, 1);
-- @formatter:on