import 'package:flutter/material.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/themes/app_colors.dart';

CardThemeData cardTheme() => CardThemeData(
  elevation: 3,
  shadowColor: AppColors.cardShadow,
  color: AppColors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
);
