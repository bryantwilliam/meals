import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  static const double _BORDER_RAD = 15;

  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  void selectCategory() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(_BORDER_RAD),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(_BORDER_RAD),
        ),
      ),
    );
  }
}
