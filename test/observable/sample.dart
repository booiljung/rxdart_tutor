import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3])
  .sample(
    TimerStream(1, const Duration(seconds: 1))
  )
  .listen(print);  
}
