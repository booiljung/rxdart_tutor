import 'package:rxdart/rxdart.dart';

void main() {
  Observable<int>.error(Exception())
  .materialize()
  .listen((i) => print("noti $i"));
}