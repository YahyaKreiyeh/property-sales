import 'package:flutter/material.dart';
import 'package:property_sales/core/themes/app_bar_theme.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/bottom_sheet_theme.dart';
import 'package:property_sales/core/themes/card_theme.dart';
import 'package:property_sales/core/themes/chip_theme.dart';
import 'package:property_sales/core/themes/color_scheme.dart';
import 'package:property_sales/core/themes/dialog_theme.dart';
import 'package:property_sales/core/themes/elevated_button_theme.dart';
import 'package:property_sales/core/themes/input_decoration_theme.dart';
import 'package:property_sales/core/themes/page_transitions_theme.dart';
import 'package:property_sales/core/themes/popupmenu_theme.dart';
import 'package:property_sales/core/themes/text_theme.dart';

ThemeData getTheme() => ThemeData(
  canvasColor: AppColors.greyShade300,
  appBarTheme: appBarTheme(),
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  primaryColor: AppColors.primary,
  primaryColorLight: AppColors.primary.withAlpha((0.1 * 255).toInt()),
  colorScheme: colorScheme(),
  textTheme: textTheme(),
  chipTheme: customChipTheme(),
  elevatedButtonTheme: elevatedButtonTheme(),
  pageTransitionsTheme: pageTransitionsTheme(),
  cardTheme: cardTheme(),
  inputDecorationTheme: inputDecorationTheme(),
  bottomSheetTheme: bottomSheetTheme(),
  datePickerTheme: const DatePickerThemeData(backgroundColor: AppColors.white),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: inputDecorationTheme(),
  ),
  dialogTheme: dialogTheme(),
  popupMenuTheme: popupMenuTheme(),
);
