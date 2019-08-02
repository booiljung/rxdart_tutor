import 'package:rxdart/rxdart.dart';

void main() {
  Observable.empty().listen(
    (_) => print("data"),
    onDone: () => print("done")
  ); // prints "done"
}