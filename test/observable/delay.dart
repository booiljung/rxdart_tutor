import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3, 4])
  .delay(Duration(seconds: 1))
  .listen(print);
}
