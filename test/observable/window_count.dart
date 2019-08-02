import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(1, 30)
    .windowCount(9)
    .asyncMap((stream) => stream.toList())
    .listen(print);
}
