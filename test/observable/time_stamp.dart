import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3, 4, 5])
  .interval(Duration(seconds: 1))
  .timestamp()
  .listen((i) => print(i));
}
