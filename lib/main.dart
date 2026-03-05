import 'package:flutter/material.dart';

// Import the first screen the app will show
import 'screens/home_screen.dart';

void main() {
  // runApp tells Flutter which widget starts the app
  runApp(const RecipeBookApp());
}

// Stateless because nothing changes here
class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // removes debug banner
      debugShowCheckedModeBanner: false,

      title: 'Recipe Book',

      // setting global theme
      theme: ThemeData(primarySwatch: Colors.orange),

      // first screen shown when app opens
      home: HomeScreen(),
    );
  }
}

