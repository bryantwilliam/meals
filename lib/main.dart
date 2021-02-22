import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/category_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const double BORDER_RAD = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/', // Default is '/' anyways.
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.ROUTE_NAME: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.ROUTE_NAME: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        // Any route that isn't registered...

        print("settings.name:" + settings.name);
        print("settings.arguments:" + settings.arguments);

        // Can also use a switch statement here with different route names.

        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        // Last resort if both routes and onGenerateRoute is not reached (maybe a 404 message as an idea?)...

        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
