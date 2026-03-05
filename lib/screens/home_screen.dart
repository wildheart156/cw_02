import 'package:flutter/material.dart';

// Import our database
import '../data/recipes_data.dart';

// Import screen we go to
import 'details_screen.dart';

//This will show the list of recipies. 
class HomeScreen extends StatelessWidget { //Stateless because it only displays data and doesnt change
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Top bar
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      
      //List view helps for long lists and only builds when needed
      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];
          //using card it will give a listing with a clear design with the padding
          //to help clearly seperate each recipe from others
          return Card(
            child: ListTile(
              //loads the widget to display on the left side of the list item to show image from assets
              leading: Image.asset(recipe.imagePath, width: 56, fit: BoxFit.cover),
              //displaying the recipe name from the recipe object
              title:   Text(recipe.name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push( //this adds a new screen to the stack so you can view the details
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );  
  }
}  