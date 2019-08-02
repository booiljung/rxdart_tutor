import 'package:rxdart/rxdart.dart';

void main() {
  Observable.forkJoin(
    [
      Observable.fromIterable(["1", "2", "3"]),
      Observable.fromIterable(["a", "b", "c"])
    ],
    (list) => list.join(',')
  ).listen(print);
}
