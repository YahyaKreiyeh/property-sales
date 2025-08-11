import 'package:flutter/material.dart';
import 'package:property_sales/core/themes/app_colors.dart';

BottomSheetThemeData bottomSheetTheme() => const BottomSheetThemeData(
  backgroundColor: AppColors.white,
  dragHandleColor: AppColors.inputBorderGrey,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  ),
);
