import 'package:flutter/material.dart';
import 'package:project_1/models/categorymodel.dart';

// ignore: camel_case_types
class listview extends StatelessWidget {
  const listview({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 20, right: 20),
      separatorBuilder: (context, index) => SizedBox(width: 29),
      itemBuilder: (context, index) {
        return Container(
          width: 140,
          decoration: BoxDecoration(
            color: categories[index].boxColor.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(19),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    categories[index].iconPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Text(
                categories[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
