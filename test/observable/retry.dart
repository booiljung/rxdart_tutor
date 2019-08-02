import 'package:rxdart/rxdart.dart';

void main() {
  Observable.retry(
    () {
      return Observable.just(-1).concatWith([
        Observable.just(1),
        Observable.just(2),
        Observable.just(3),
        Observable.error(Error()),
        Observable.just(10)
      ]);
    }, 5
  )
   .listen(print, onError: (e, s) => print(e)); // Prints 1, 1, RetryError
}