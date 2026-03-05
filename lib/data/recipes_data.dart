import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/pasta2.jpg',
    ingredients: [
      'Spaghetti',
      'Ground beef',
      'Tomato sauce',
      'Onion',
      'Garlic',
    ],
    instructions:
        'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),
  // Add 3+ more recipes…
    Recipe(
    name: 'Fresh Garden Salad',
    imagePath: 'assets/images/salad.jpg',
    ingredients: [
      'Lettuce',
      'Tomatoes',
      'Cucumber',
      'Olive oil',
      'Salt'
    ],
    instructions: 'Chop veggies. Toss together. Add dressing.',
  ),

  Recipe(
    name: 'Grilled Cheese Sandwich',
    imagePath: 'assets/images/grilled_cheese.jpg',
    ingredients: [
      'Bread',
      'Cheese',
      'Butter'
    ],
    instructions: 'Butter bread. Add cheese. Grill until golden.',
  ),

  Recipe(
    name: 'Fruit Smoothie',
    imagePath: 'assets/images/smoothie.jpg',
    ingredients: [
      'Strawberry',
      'Blue Berries',
      'Milk',
      'Cream'
    ],
    instructions: 'Blend everything until smooth, garnish with strawberry',
  ),
];
