import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart' hide find;

void main() {
  FlutterDriver? flutterDriver;
  final numberFinder = find.byValueKey("Number");
  final increaFinder = find.byValueKey("Increase");
  final decreasefinder = find.byValueKey("Decrease");

  setUpAll(() async {
    flutterDriver = await FlutterDriver.connect();
  });

  tearDownAll(() async {
    if (flutterDriver != null) {
      flutterDriver?.close();
    }
  });

  test(' Increment & Decrement Counter', () async {
    await flutterDriver?.tap(increaFinder);
    expect(await flutterDriver?.getText(numberFinder), '1');

    await Future.delayed(const Duration(seconds: 2));

    await flutterDriver?.tap(decreasefinder);
    await flutterDriver?.tap(decreasefinder);
    expect(await flutterDriver?.getText(numberFinder), '-1');
  });
}
