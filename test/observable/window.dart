import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(const Duration(milliseconds: 100), (i) => i)
  .window(Stream.periodic(const Duration(milliseconds: 160), (i) => i))
  .asyncMap((stream) => stream.toList())
  .listen(print);
}
