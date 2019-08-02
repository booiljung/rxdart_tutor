import 'package:rxdart/rxdart.dart';

void main() {
  Observable<int>.error(Exception())
  .onErrorReturnWith((e) => e is Exception ? 1 : 0)
  .listen(print);
}
