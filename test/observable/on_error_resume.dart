import 'package:rxdart/rxdart.dart';

void main() {
  Observable<int>.error(Exception())
  .onErrorResume(
    (dynamic e) =>
      Observable.just(e is StateError ? 1 : 0)
  )
  .listen(print);
}
