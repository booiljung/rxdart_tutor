import 'package:rxdart/rxdart.dart';

// why do not work?

void main() {
  Observable.just(2).startWith(1).listen(print);
}
