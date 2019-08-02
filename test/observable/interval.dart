import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([
    1, 2, 3
  ])
  .interval(Duration(seconds: 1))
  .listen((i) => print("$i sec"));
}
