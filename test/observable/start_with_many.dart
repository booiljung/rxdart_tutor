import 'package:rxdart/rxdart.dart';

// why do not work?

void main() {
  Observable.just(10).startWithMany([1, 2])
  .listen(print);  
}
