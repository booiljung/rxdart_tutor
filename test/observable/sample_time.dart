import 'package:rxdart/rxdart.dart';

void main() {
  Observable.fromIterable([1, 2, 3])
    .sampleTime(const Duration(seconds: 1))
    .listen(print);
}
