import 'package:rxdart/rxdart.dart';

void main() {
  Observable.repeat(
    (int repeatCount) {
      return Observable.just(
        'repeat index: $repeatCount'
      );
    },
    100
  )
    .listen((i) => print(i)); // Prints 'repeat index: 0, repeat index: 1, repeat index: 2'
}