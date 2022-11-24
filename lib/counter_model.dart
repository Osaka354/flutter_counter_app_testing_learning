class CounterModel {
  int _number = 0;
  int get number => _number;

  void increaseNumber() {
    _number++;
  }

  void decreaseNumber() {
    _number--;
  }
}
