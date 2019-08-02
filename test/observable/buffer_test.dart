import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(const Duration(milliseconds: 1), (int i) => i)
  .bufferTest((i) => i % 6 == 0)
  .listen(print);
}
