import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(
    const Duration(milliseconds: 100),
    (int i) => i
  )
  .windowTime(const Duration(milliseconds: 220))
  .doOnData((_) => print('next window'))
  .flatMap((s) => s)
  .listen((v) => print(v.toString()));
}
