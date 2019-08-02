import 'package:rxdart/rxdart.dart';

void main() {
  bool errorHappened = false;
  Observable.retryWhen(
    () {
      return Observable.periodic(
        const Duration(seconds: 1), (i) => i
      )
      .map((i) {
        if (i == 3 && !errorHappened) {
          throw 'We can take this. Please restart.';
        } else if (i == 4) {
          throw 'It\'s enough.';
        } else {
          return i;
        }
      });
    },
    (e, s) {
      errorHappened = true;
      if (e == 'We can take this. Please restart.') {
        return Observable.just('Ok. Here you go!');
      } else {
        return Observable.error(e);
      }
    },
  ).listen (
    print,
    onError: (e, s) => print(e),
  );
}