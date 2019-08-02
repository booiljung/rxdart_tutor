import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(const Duration(milliseconds: 100), (int i) => i)
  .bufferTime(const Duration(milliseconds: 220))
  .listen(print);
}
