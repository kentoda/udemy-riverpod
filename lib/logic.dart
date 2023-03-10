import 'package:practice/data/count_data.dart';

class Logic {
  CountData _countData = const CountData(
    count: 0,
    countUp: 0,
    countDown: 0,
  );

  get countData => _countData;

  void inCrement() {
    _countData = _countData.copyWith(
      count: _countData.count + 1,
      countUp: _countData.countUp + 1,
    );
  }

  void deCrement() {
    _countData = _countData.copyWith(
      count: _countData.count - 1,
      countDown: _countData.countDown + 1,
    );
  }

  void reset() {
    _countData = const CountData(
      count: 0,
      countUp: 0,
      countDown: 0,
    );
  }
}
