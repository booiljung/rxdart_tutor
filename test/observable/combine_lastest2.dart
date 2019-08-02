import 'package:rxdart/rxdart.dart';

void main() {
  Observable.combineLatest2(
    Observable.just(5),
    Observable.fromIterable([0, 1, 2]),
    (a, b) => a + b)
  .listen(print);
}
