import 'package:flutter/material.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/themes/app_colors.dart';

PopupMenuThemeData popupMenuTheme() => PopupMenuThemeData(
  color: AppColors.greyShade300,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
);
