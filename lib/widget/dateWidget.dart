import 'package:flutter/material.dart';

Container dateWidget(String day, String date, bool isActive) {
  return Container(
    margin: EdgeInsets.only(
      right: 10.0,
    ),
    padding: EdgeInsets.all(
      20.0,
    ),
    decoration: BoxDecoration(
      color: isActive ? Colors.orange : Colors.grey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(
        20.0,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          day,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: isActive ? Colors.white : Colors.black),
        ),
        Text(
          date,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: isActive ? Colors.white : Colors.black),
        ),
      ],
    ),
  );
}
