import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(
    Duration(milliseconds: 100), (i) => i
  )
    .take(100)
    .listen(print); // prints 0, 1, 2
}