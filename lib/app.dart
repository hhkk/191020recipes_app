import 'package:flutter/material.dart';
import 'package:recipes_app/ui/screens/login.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes2',
      initialRoute: '/login',
      routes: {
        // If you're using navigation routes, Flutter needs a base route.
        // We're going to change this route once we're ready with
        // implementation of HomeScreen.
        '/': (context) => LoginScreen(),
        '/login': (context) => LoginScreen(),
        '/login2': (context) => LoginScreen(),
      },
    );
  }
}




