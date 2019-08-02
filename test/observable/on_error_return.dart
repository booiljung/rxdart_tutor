import 'package:rxdart/rxdart.dart';

void main() {
  Observable<int>.error(Exception())
  .onErrorReturn(1)
  .listen(print);
}
