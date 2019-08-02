import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable({1, 2, 3, 4})
  .listen(print); // prints 1, 2  
}
