import 'package:rxdart/rxdart.dart';

void main() {
  Observable.race([
    Observable.timer(1, Duration(seconds: 3)),
    Observable.timer(2, Duration(seconds: 2)),
    Observable.timer(3, Duration(seconds: 1))
  ]).listen(print); // prints 3  
}