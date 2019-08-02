import 'package:rxdart/rxdart.dart';

void main() {
  Observable.just(1)
  .doOnListen(() => print("Is someone there?"))
  .listen(null);
}
