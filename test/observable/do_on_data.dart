import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3])
  .doOnData(print)
  .listen(null);
}
