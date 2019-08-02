import 'package:rxdart/rxdart.dart';

// Why do not work?

void main() {
  final source = Observable.fromIterable([1, 2, 3]);
  final connectable = source.publishReplay();

  // Does not print anything at first
  connectable.listen(print);

  // Start listening to the source Observable. Will cause the previous
  // line to start printing 1, 2, 3
  final subscription = connectable.connect();

  // Late subscribers will receive the emitted value, up to a specified
  // maxSize
  connectable.listen(print); // Prints 1, 2, 3

  // Can access a list of the emitted values synchronously. Prints [1, 2, 3]
  print(connectable.values);

  // Stop emitting items from the source stream and close the underlying
  // ReplaySubject
  subscription.cancel();  
}
