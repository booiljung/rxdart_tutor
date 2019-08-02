import 'package:rxdart/rxdart.dart';

void main() {
  Observable.combineLatest(
    [
      Observable.just("a"), Observable.fromIterable(["b", "c", "d"])
    ],
    (list) => list.join()
  )
  .listen(print);
}
