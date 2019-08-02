import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3])
  .doOnDone(() => print("all set"))
  .listen(print);
}
