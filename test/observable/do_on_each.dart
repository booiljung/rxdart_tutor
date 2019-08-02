import 'package:rxdart/rxdart.dart';

void main() {
  Observable.just(1)
  .doOnEach(print)
  .listen(null);
}
