import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(10, 1)
  .asyncExpand(
    (i) {
      return Observable.timer(i, Duration(milliseconds: i*100));
    }
  )
  .listen(print);
}