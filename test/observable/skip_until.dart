import 'package:rxdart/rxdart.dart';

// why do not work?

void main() {
  Observable.merge([
    Observable.just(1),
    Observable.timer(2, Duration(seconds: 10))
  ])
  .skipUntil(
    Observable.timer(true, Duration(seconds: 5))
  )
  .listen(print);
}
