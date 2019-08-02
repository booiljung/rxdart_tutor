import 'package:rxdart/rxdart.dart';

void main() {
  Observable<Notification<int>>
    .fromIterable([Notification.onData(1), Notification.onDone()])
    .dematerialize()
    .listen((i) => print(i));
}
