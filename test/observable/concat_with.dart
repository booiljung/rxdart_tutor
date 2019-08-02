import 'package:rxdart/rxdart.dart';

void main() {
  Observable.timer(1, Duration(seconds: 5))
  .concatWith([Observable.just(2)])
  .concatWith([Observable.just(3)])
  .listen(print);  
}
