import 'package:counter_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const numberKey = Key("Number");
  const increaseKey = Key("Increase");
  const decreaseKey = Key("Decrease");
  testWidgets("Dispay zero default number", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    final widgetTest = find.byKey(numberKey);
    expect(widgetTest, findsOneWidget);
  });
  testWidgets("Tap on increase button", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    final widgetTest = find.byKey(numberKey);
    await widgetTester.tap(find.byKey(increaseKey));
    expect(widgetTest, findsOneWidget);
  });
  testWidgets("Tap on dencrease button", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    final widgetTest = find.byKey(numberKey);
    await widgetTester.tap(find.byKey(decreaseKey));
    expect(widgetTest, findsOneWidget);
  });
  testWidgets("Tap on increase & decrease button in order",
      (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    final widgetTest = find.byKey(numberKey);
    await widgetTester.tap(find.byKey(increaseKey));
    expect(widgetTest, findsOneWidget);
    await widgetTester.tap(find.byKey(decreaseKey));
    expect(widgetTest, findsOneWidget);
  });
}
