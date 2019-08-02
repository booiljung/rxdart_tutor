import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(1, 4)
  .flatMapIterable((i) =>
    Observable.just([i, i+1, i+2])
  )
  .listen(print);
}
