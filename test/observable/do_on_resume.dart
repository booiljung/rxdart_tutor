import 'package:rxdart/rxdart.dart';

void main() {
  final subscription = Observable.just(1)
    .doOnPause((v)=> print("Paused"))
    .doOnResume(() => print("Let's do this!"))
    .listen(null);
  subscription.pause();
  subscription.resume();
  subscription.pause();
  subscription.resume();
}
