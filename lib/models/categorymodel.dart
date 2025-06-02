import 'package:flutter/widgets.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.boxColor,
    required this.iconPath,
  });
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Salad',
        iconPath: 'assets/image/salad.jpg',
        boxColor: Color(0xCC9953D3),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Pie',
        iconPath: 'assets/image/Pie.jpeg',
        boxColor: Color(0Xff92A3FD),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Cake',
        iconPath: 'assets/image/cake.jpg',
        boxColor: Color(0x8C7C98CC),
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Smoothie',
        iconPath: 'assets/image/smoothie.jpeg',
        boxColor: Color(0xFFD5A398),
      ),
    );
    return categories;
  }
}
