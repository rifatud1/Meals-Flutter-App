import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screens.dart';
import 'package:meals_app/screens/meal_details_screen.dart';
import 'screens/catagories_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.amber),
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          subtitle1: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: CatagoriesScreen(),
      routes: {
        '/category-meals': (ctx) => CategoryMealsItem(),
        MealDetailsScreen.routeName:  (ctx) => MealDetailsScreen(),
      },
    );
  }
}
