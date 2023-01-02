// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:practice/logic.dart';
// import 'package:practice/provider.dart';

// class ViewModel {
//   Logic _logic = Logic();

//   late WidgetRef _ref;

//   void setRef(WidgetRef ref) {
//     _ref = ref;
//   }

//   get count => _ref.watch(countDataProvider).count.toString();

//   get countUp =>
//       _ref.watch(countDataProvider.select((value) => value.countUp)).toString();

//   get countDown => _ref
//       .watch(countDataProvider.select((value) => value.countDown))
//       .toString();

//   void onInCrement() {
//     _logic.inCrement();

//     _ref.watch(countDataProvider.notifier).state = _logic.countData;
//   }

//   void onDeCrement() {
//     _logic.deCrement();

//     _ref.watch(countDataProvider.notifier).state = _logic.countData;
//   }

//   void onReset() {
//     _logic.reset();

//     _ref.watch(countDataProvider.notifier).state = _logic.countData;
//   }
// }
