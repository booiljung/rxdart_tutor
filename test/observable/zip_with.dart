import 'package:rxdart/rxdart.dart';

void main() {
  Observable.just(11)
    .zipWith(Observable.just(2), (one, two) => one + two)
    .listen(print);      
}
