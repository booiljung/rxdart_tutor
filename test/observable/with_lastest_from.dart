import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2]).withLatestFrom(
  Observable.fromIterable([2, 3]), (a, b) => a + b)
  .listen(print); 
}
