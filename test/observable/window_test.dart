import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(const Duration(milliseconds: 100), (int i) => i)
    .windowTest((i) => i % 8 == 0)
    .asyncMap((stream) => stream.toList())
    .listen(print);
}
