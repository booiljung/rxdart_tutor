import 'package:rxdart/rxdart.dart';

void main() {
  final subscription = Observable.timer(
    1,
    Duration(seconds: 10)
  )
  .doOnCancel(
    () => print("hi")
  )
  .listen(print);

  subscription.cancel();
}
