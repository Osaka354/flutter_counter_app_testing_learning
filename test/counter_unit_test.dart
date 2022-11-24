import 'package:counter_app/counter_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Test default nummber is 0", () {
    final counter = CounterModel();
    expect(counter.number, 0);
  });
  test("Increase number by one", () {
    final counter = CounterModel();
    counter.increaseNumber();
    expect(counter.number, 1);
  });
  test("Decrease number by one", () {
    final counter = CounterModel();
    counter.decreaseNumber();
    expect(counter.number, -1);
  });
  test("Increase & decrease number by one in order", () {
    final counter = CounterModel();
    counter.increaseNumber();
    expect(counter.number, 1);
    counter.decreaseNumber();
    expect(counter.number, 0);
  });
}
