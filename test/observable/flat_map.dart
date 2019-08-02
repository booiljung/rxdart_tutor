import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(10, 1)
  .flatMap((i) =>
    Observable.timer(i, Duration(seconds: i))
  )
  .listen(print);
}
