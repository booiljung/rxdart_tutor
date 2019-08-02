import 'package:rxdart/rxdart.dart';

// why do not work?

void main() {
  final observable = Observable.fromIterable([1, 2, 3]).share();
  final subscription = observable.listen(print);
  subscription.cancel();
}
