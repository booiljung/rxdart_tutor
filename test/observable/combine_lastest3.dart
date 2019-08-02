import 'package:rxdart/rxdart.dart';

void main() {
  Observable.combineLatest3(
    Observable.fromIterable(["1", "2", "3", "4"]),
    Observable.fromIterable(["a", "b", "c"]),
    Observable.fromIterable(["A", "B", "C", "D", "E"]),
    (a, b, c) => a + b + c)
  .listen(print);
}
