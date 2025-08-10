import 'package:flutter/material.dart';
import 'package:property_sales/core/constants/constants.dart';

ElevatedButtonThemeData elevatedButtonTheme() => ElevatedButtonThemeData(
  style: ButtonStyle(
    maximumSize: WidgetStateProperty.all(
      const Size(double.infinity, buttonHeight),
    ),
    minimumSize: WidgetStateProperty.all(
      const Size(double.infinity, buttonHeight),
    ),
  ),
);
