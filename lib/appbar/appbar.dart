import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    title: Text(
      'Breakfast',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.pink[50],
    centerTitle: true,

    leading: GestureDetector(
      onTap: () {},

      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Icon(Icons.arrow_back),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},

        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.more_horiz),
        ),
      ),
    ],
  );
}
