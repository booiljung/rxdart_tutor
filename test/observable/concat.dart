import 'package:rxdart/rxdart.dart';

void main() {
  Observable.concat([
    Observable.just(0),
    Observable.just(1),
    Observable.timer(2, new Duration(seconds: 5)),
    Observable.just(3)
  ])
  .listen(print); // prints 1, 2, 3
}
