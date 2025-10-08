import '../models/recipe.dart';

class RecipeData {
  static List<Recipe> _recipes = [
    Recipe(
      id: '1',
      name: 'Spaghetti Carbonara',
      ingredients: [
        '400g spaghetti',
        '200g pancetta or guanciale',
        '3 large eggs',
        '100g Pecorino Romano cheese',
        '100g Parmesan cheese',
        'Black pepper',
        'Salt'
      ],
      instructions: '''1. Cook spaghetti in salted boiling water according to package directions.

2. While pasta cooks, cut pancetta into small cubes and cook in a large pan until crispy.

3. In a bowl, whisk eggs with grated cheeses and plenty of black pepper.

4. Drain pasta, reserving 1 cup pasta water. Add hot pasta to the pan with pancetta.

5. Remove from heat and quickly mix in egg mixture, adding pasta water gradually until creamy.

6. Serve immediately with extra cheese and black pepper.''',
    ),
    Recipe(
      id: '2',
      name: 'Chicken Tikka Masala',
      ingredients: [
        '1 lb boneless chicken, cubed',
        '1 cup plain yogurt',
        '2 tbsp lemon juice',
        '2 tsp garam masala',
        '1 tsp cumin',
        '1 can crushed tomatoes',
        '1 cup heavy cream',
        '3 cloves garlic, minced',
        '1 inch ginger, grated',
        '1 onion, diced',
        'Salt and pepper'
      ],
      instructions: '''1. Marinate chicken in yogurt, lemon juice, half the garam masala, cumin, salt and pepper for at least 30 minutes.

2. Cook marinated chicken in a large skillet until golden brown and cooked through. Set aside.

3. In the same skillet, sauté onion until soft. Add garlic and ginger, cook for 1 minute.

4. Add crushed tomatoes and remaining garam masala. Simmer for 10 minutes.

5. Stir in heavy cream and cooked chicken. Simmer for 5 more minutes.

6. Adjust seasoning and serve hot with rice or naan.''',
    ),
    Recipe(
      id: '3',
      name: 'Chocolate Chip Cookies',
      ingredients: [
        '2¼ cups all-purpose flour',
        '1 tsp baking soda',
        '1 tsp salt',
        '1 cup butter, softened',
        '¾ cup granulated sugar',
        '¾ cup brown sugar',
        '2 large eggs',
        '2 tsp vanilla extract',
        '2 cups chocolate chips'
      ],
      instructions: '''1. Preheat oven to 375°F (190°C).

2. In a bowl, whisk together flour, baking soda, and salt.

3. In another large bowl, cream butter with both sugars until light and fluffy.

4. Beat in eggs one at a time, then vanilla extract.

5. Gradually mix in flour mixture until just combined. Stir in chocolate chips.

6. Drop rounded tablespoons of dough onto ungreased baking sheets.

7. Bake for 9-11 minutes until golden brown. Cool on baking sheet for 2 minutes before transferring to wire rack.''',
    ),
    Recipe(
      id: '4',
      name: 'Caesar Salad',
      ingredients: [
        '1 large head romaine lettuce',
        '½ cup Parmesan cheese, grated',
        '1 cup croutons',
        '3 cloves garlic, minced',
        '2 anchovy fillets',
        '1 egg yolk',
        '3 tbsp lemon juice',
        '½ cup olive oil',
        '1 tsp Dijon mustard',
        'Salt and black pepper'
      ],
      instructions: '''1. Wash and chop romaine lettuce into bite-sized pieces.

2. For dressing: In a small bowl, mash garlic and anchovies together.

3. Whisk in egg yolk, lemon juice, and Dijon mustard.

4. Slowly drizzle in olive oil while whisking constantly until emulsified.

5. Season with salt and pepper to taste.

6. Toss lettuce with dressing, add croutons and Parmesan cheese.

7. Serve immediately.''',
    ),
  ];

  static List<Recipe> getAllRecipes() {
    return _recipes;
  }

  static List<Recipe> getFavoriteRecipes() {
    return _recipes.where((recipe) => recipe.isFavorite).toList();
  }

  static void toggleFavorite(String recipeId) {
    final index = _recipes.indexWhere((recipe) => recipe.id == recipeId);
    if (index != -1) {
      _recipes[index].isFavorite = !_recipes[index].isFavorite;
    }
  }

  static Recipe? getRecipeById(String id) {
    try {
      return _recipes.firstWhere((recipe) => recipe.id == id);
    } catch (e) {
      return null;
    }
  }
}