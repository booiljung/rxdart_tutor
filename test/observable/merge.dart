import 'package:rxdart/rxdart.dart';

void main() {
  Observable.merge([
    Observable.timer(4, Duration(seconds: 2)),
    Observable.just(3),
    Observable.timer(1, Duration(seconds: 1)),
    Observable.just(2)
  ])
  .listen(print); // prints 2, 1
}