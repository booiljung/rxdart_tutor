import 'package:rxdart/rxdart.dart';

void main() {
  Observable(Stream.fromIterable([1]))
    .interval(Duration(seconds: 10))
    .flatMap((i) => Observable.just(2))
    .take(1)
    .listen(print); // prints 2
}
