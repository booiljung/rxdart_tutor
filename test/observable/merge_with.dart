import 'package:rxdart/rxdart.dart';

void main() {
  Observable.timer(1, Duration(seconds: 10))
    .mergeWith([Observable.just(2)])
    .listen(print);
}