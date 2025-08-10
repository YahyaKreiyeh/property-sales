import 'package:flutter_test/flutter_test.dart';
import 'package:property_sales/property_sales.dart';

void main() {
  testWidgets('PropertySales increments smoke test', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PropertySales());
  });
}
