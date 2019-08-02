import 'package:rxdart/rxdart.dart';

// Why do not work?

void main() {
  final source = Observable.fromIterable([1, 2, 3]);
  final connectable = source.publish();

  // Does not print anything at first
  connectable.listen(print);

  // Start listening to the source Observable. Will cause the previous
  // line to start printing 1, 2, 3
  final subscription = connectable.connect();

  // Stop emitting items from the source stream and close the underlying
  // Subject
  subscription.cancel();  
}
