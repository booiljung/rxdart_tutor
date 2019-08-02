import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromFuture(Future.value("Hello"))
  .listen(print); // prints "Hello"
}
