// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:project_1/models/categorymodel.dart';
import 'package:project_1/models/diet_model.dart';

class dietList extends StatelessWidget {
  const dietList({super.key, required this.categories, required this.diets});

  final List<CategoryModel> categories;
  final List<DietModel> diets;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          decoration: BoxDecoration(
            color: categories[index].boxColor.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(diets[index].iconPath, height: 120, width: 150),
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
    );
  }
}
