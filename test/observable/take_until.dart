import 'package:rxdart/rxdart.dart';

void main() {
  Observable.merge([
    Observable.just(1),
    Observable.timer(2, Duration(minutes: 1))
  ])
  .takeUntil(Observable.timer(3, Duration(seconds: 10)))
  .listen(print); 
}