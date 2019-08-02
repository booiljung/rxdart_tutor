import 'package:rxdart/rxdart.dart';

void main() {
  Observable.empty()
  .defaultIfEmpty(10)
  .listen(print);
}
