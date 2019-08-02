import 'package:rxdart/rxdart.dart';

void main() {
  Observable
  .range(0, 20)
  .doOnData((value) => print("doOnData: $value"))
  .interval(Duration(milliseconds: 500))
  .exhaustMap((i) =>
    Observable.timer(i, Duration(milliseconds: 750))
  )
  .listen((value) => print("listen: $value"));
}
