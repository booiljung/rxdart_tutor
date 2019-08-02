import 'package:rxdart/rxdart.dart';

void main() {
  Observable<Notification<int>>
    .just(Notification.onError(Exception(), null))
    .dematerialize()
    .listen(
      null,
      onError: (e, s) { print(e); }
    );
}
