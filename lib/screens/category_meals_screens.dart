import 'package:flutter/material.dart';
import '../dummy_categories.dart';
import '../widgets/meal_item.dart';

class CategoryMealsItem extends StatelessWidget {
  //final String? title;
  //const CategoryMealsItem({Key? key, String? this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("$categoryTitle"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: categoryMeals[i].id,
            title: categoryMeals[i].title,
            duration: categoryMeals[i].duration,
            affordability: categoryMeals[i].affordability,
            complexity: categoryMeals[i].complexity,
            imageUrl: categoryMeals[i].imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
