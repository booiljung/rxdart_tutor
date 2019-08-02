import 'package:rxdart/rxdart.dart';

void main() {
  Observable.zip(
    [
      Observable.fromIterable(["Hi ", "Hello ", "Howdy "]),
      Observable.fromIterable(["Friend", "Dropped"]),
    ],
    (values) => values.first + values.last
  )
  .listen(print);
}
