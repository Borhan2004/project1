import 'package:flutter/material.dart';

Container textfield() {
  return Container(
    margin: EdgeInsets.only(top: 40, left: 20, right: 20),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff101617).withValues(alpha: .16),
          blurRadius: 40,
          spreadRadius: 0.0,
        ),
      ],
    ),

    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search Pancake',
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.filter),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
