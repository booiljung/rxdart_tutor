import 'package:rxdart/rxdart.dart';

void main() {
  Observable.zip3(
    Observable.fromIterable(["Hi ", "Hello ", "Howdy "]),
    Observable.fromIterable(["Friend ", "Dropped "]),
    Observable.fromIterable(["Welcome", "Bye", "Go"]),
    (a, b, c) => a + b + c)
  .listen(print);
}
