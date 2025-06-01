import 'package:flutter/material.dart';
import 'package:project_1/appbar/appbar.dart';
import 'package:project_1/models/categorymodel.dart';
import 'package:project_1/models/categorytext.dart';
import 'package:project_1/models/dietView.dart';
import 'package:project_1/models/diet_model.dart';
import 'package:project_1/models/listview_model.dart';
import 'package:project_1/searchfield/textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  // ignore: unused_element
  void _getDiets() {
    diets = DietModel.getDiets();
  }

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    _getCategories();
    return Scaffold(
      appBar: appbar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textfield(),
          SizedBox(height: 22),

          category(),
          SizedBox(height: 20),
          SizedBox(height: 160, child: listview(categories: categories)),
          SizedBox(height: 40),

          recommendText(),
          SizedBox(height: 18),
          SizedBox(
            height: 250,
            child: dietList(categories: categories, diets: diets),
          ),
        ],
      ),
    );
  }
}
