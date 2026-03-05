
import 'package:flutter/material.dart';
import '../models/recipe.dart';


class DetailsScreen extends StatelessWidget {
  //this pulls recipe from home screen
  final Recipe recipe;//you ju
  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // show recipe name in top bar
      appBar: AppBar(title: Text(recipe.name)),

      // allows vertical scrolling if content is long
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // images
            Image.asset(
              recipe.imagePath,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16),


            // INGREDIENTS TITLE

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Loop through ingredients list
            
            ...recipe.ingredients.map(
              (ingredient) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 4,
                ),
                child: Text('• $ingredient'),
              ),
            ),

            const SizedBox(height: 20),

            //Instructions on how to make
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Instructions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(recipe.instructions),
            ),
          ],
        ),
      ),
    );
  }
}
