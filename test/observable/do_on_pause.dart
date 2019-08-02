import 'package:rxdart/rxdart.dart';

void main() {
  final subscription = Observable.just(1)
  .doOnPause((value) => print("${value} Gimme a minute please"))
  .listen(null);
  subscription.pause();
}
