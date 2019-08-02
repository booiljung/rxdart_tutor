import 'package:rxdart/rxdart.dart';

void main() {
  final source = Observable.fromIterable([1, 2, 3]);
  final connectable = source.publishValueSeeded(0);

  // Does not print anything at first
  connectable.listen(print);

  // Start listening to the source Observable. Will cause the previous
  // line to start printing 0, 1, 2, 3
  final subscription = connectable.connect();

  // Late subscribers will receive the last emitted value
  connectable.listen(print); // Prints 3

  // Can access the latest emitted value synchronously. Prints 3
  print(connectable.value);

  // Stop emitting items from the source stream and close the underlying
  // BehaviorSubject
  subscription.cancel();  
}
