import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(4, 1)
  .concatMap((i) => Observable.timer(i, Duration(seconds: i)))
  .listen(print);  
}
