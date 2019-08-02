import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3, 4, 5, 6, 7])
  .listen(print); // prints 1, 2  
}
