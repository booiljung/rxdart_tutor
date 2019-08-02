import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3, 4])
  .debounce((_) => TimerStream(true, const Duration(seconds: 1)))
  .listen(print); 
}
