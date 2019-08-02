import 'package:rxdart/rxdart.dart';

// why do not work?

void main() {
  // Convert a single-subscription fromIterable stream into a broadcast
  // stream that will emit the latest value to any new listeners
  final observable = Observable.fromIterable([1, 2, 3]).shareValueSeeded(0);

  // Start listening to the source Observable. Will start printing 0, 1, 2, 3
  final subscription = observable.listen(print);

  // Synchronously print the latest value
  print(observable.value);

  // Subscribe again later. This will print 3 because it receives the last
  // emitted value.
  final subscription2 = observable.listen(print);

  // Stop emitting items from the source stream and close the underlying
  // BehaviorSubject by cancelling all subscriptions.
  subscription.cancel();
  subscription2.cancel();
}
