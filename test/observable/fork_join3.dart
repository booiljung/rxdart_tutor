import 'package:rxdart/rxdart.dart';

void main() {
  Observable.forkJoin(
    [
      Observable.fromIterable(["A", "B", "C", "D"]),
      Observable.fromIterable(["1", "2",]),
      Observable.fromIterable(["a", "b", "c"])
    ],
    (list) => list.join(',')
  ).listen(print);
}
