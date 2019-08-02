import 'package:rxdart/rxdart.dart';

void main() {
  Observable.retryWhen(
    () {
      return Observable<int>
        .periodic(const Duration(microseconds: 10), (int i) => i)
        .map((int i) => i == 6 ? throw 'exception' : i); // error on 6
    },
    (dynamic e, StackTrace s) {
      return Observable<String>
        .timer('random value', const Duration(milliseconds: 200));
    },
  )
  .take(10)
  .listen(print);
}
