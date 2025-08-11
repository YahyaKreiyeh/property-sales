import 'package:flutter/material.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/routing/app_router.dart';
import 'package:property_sales/core/routing/routes.dart';
import 'package:property_sales/core/themes/theme.dart';
import 'package:property_sales/features/snackbar/views/snackbar_view.dart';

class PropertySales extends StatelessWidget {
  const PropertySales({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: propertySales,
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: isLoggedInUser ? Routes.home : Routes.login,
      builder: (context, child) {
        return SnackbarView(child: child ?? const SizedBox.shrink());
      },
    );
  }
}
