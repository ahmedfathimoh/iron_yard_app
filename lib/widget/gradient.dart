import 'package:flutter/material.dart';

LinearGradient gradientStyle() {
  return LinearGradient(
    colors: [
      Colors.orange[300],
      Colors.orange,
    ],
    stops: [
      0,
      1,
    ],
    begin: Alignment.topCenter,
  );
}
