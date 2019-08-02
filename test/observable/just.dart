import 'package:rxdart/rxdart.dart';

void main() {
  Observable.just(1)
  .listen(print); // prints 1
}
