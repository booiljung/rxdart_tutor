import 'package:rxdart/rxdart.dart';

void main() {
  Observable.retryWhen(
    () => Stream<int>.fromIterable(
      <int>[1, 2, 3, 4, 5]
    ),
    (dynamic error, StackTrace s) => throw error,
  ).listen(print); // Prints 1
}
