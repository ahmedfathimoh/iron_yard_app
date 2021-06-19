import 'package:flutter/material.dart';
import 'package:iron_yard_app/widget/gradient.dart';

Column categoryWidget(String img, String name, bool isActive) {
  return Column(
    children: [
      Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
          color: (isActive) ? null : Colors.grey.withOpacity(0.3),
          gradient: (isActive) ? gradientStyle() : null,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/$img.png'),
              ),
            ),
          ),
        ),
      ),
      Text(
        name,
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
