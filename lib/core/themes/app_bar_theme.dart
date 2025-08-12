import 'package:flutter/material.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/text_styles.dart';

AppBarTheme appBarTheme() => AppBarTheme(
  backgroundColor: AppColors.white,
  surfaceTintColor: AppColors.appBarBackground,
  foregroundColor: AppColors.appBarForeground,
  titleTextStyle: TextStyles.primaryText60022,
);
