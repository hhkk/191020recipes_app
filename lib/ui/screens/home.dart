import 'package:flutter/material.dart';

import 'package:recipes_app/model/recipe.dart';
import 'package:recipes_app/ui/widgets/recipe_card.dart';
import 'package:recipes_app/utils/store.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // New member of the class:
  List<Recipe> recipes = getRecipes();
  List<String> userFavorites = getFavoritesIDs();

  // New method:
  // Inactive widgets are going to call this method to
  // signalize the parent widget HomeScreen to refresh the list view.
  void _handleFavoritesListChanged(String recipeID) {
    // Set new state and refresh the widget:

    for (Recipe r in recipes) {
      if (r.id == recipeID)
        print("hbkhbk in fav change:" + r.name);
    }
    setState(() {
      if (userFavorites.contains(recipeID)) {
        userFavorites.remove(recipeID);
      } else {
        userFavorites.add(recipeID);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // New method:
    Padding _buildRecipes(List<Recipe> recipesList) { // New code  hbkhbk here a lot?
      return Padding( // New code
        // Padding before and after the list view:
        padding: const EdgeInsets.symmetric(vertical: 5.0), // New code
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: recipesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return new RecipeCard(
                    recipe: recipesList[index],
                    inFavorites:
                    userFavorites.contains(recipesList[index].id),
                    onFavoriteButtonPressed: _handleFavoritesListChanged,
                  );
                },
              ),
            ),
          ],
        ),
      ); // New code
    }

    const double _iconSize = 20.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          // We set Size equal to passed height (50.0) and infinite width:
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.amber,
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(icon: Icon(Icons.restaurant, size: _iconSize)), // hbkhbk
                Tab(icon: Icon(Icons.local_drink, size: _iconSize)),
                Tab(icon: Icon(Icons.favorite, size: _iconSize)),
                Tab(icon: Icon(Icons.settings, size: _iconSize)),
                //Tab(icon: Icon(Icons.settings_bluetooth, size: _iconSize)),

              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            // Replace placeholders:
            children: [
              // Display recipes of type food:
              _buildRecipes(recipes
                  .where((recipe) => recipe.type == RecipeType.food)
                  .toList()),
              // Display recipes of type drink:
              _buildRecipes(recipes
                  .where((recipe) => recipe.type == RecipeType.drink)
                  .toList()),
              // Display favorite recipes:
              _buildRecipes(recipes
                  .where((recipe) => userFavorites.contains(recipe.id))
                  .toList()),
              Center(child: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}