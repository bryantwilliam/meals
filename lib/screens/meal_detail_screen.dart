import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const ROUTE_NAME = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Center(
      child: Text('The meal - $mealId'),
    );
  }
}
