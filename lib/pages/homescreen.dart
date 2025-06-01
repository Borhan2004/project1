import 'package:flutter/material.dart';
import 'package:project_1/appbar/appbar.dart';
import 'package:project_1/models/categorymodel.dart';
import 'package:project_1/models/categorytext.dart';
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

          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Recommendation \n For Diets',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            height: 250,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        diets[index].iconPath,
                        height: 120,
                        width: 150,
                      ),
                      Text(
                        diets[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '${diets[index].level}|${diets[index].duration}|${diets[index].calories}',
                        style: TextStyle(
                          color: Color(0xff7B6F72),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 25),
              itemCount: diets.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
            ),
          ),
        ],
      ),
    );
  }
}
