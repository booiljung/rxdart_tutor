import 'package:rxdart/rxdart.dart';

void main() {
  Observable.periodic(
    const Duration(milliseconds: 100), (i) => i
  )
  .buffer(
    Stream.periodic(
      const Duration(milliseconds: 160),
      (i) {
        print("buffer $i");
        return i;
      },
    )
  )
  .listen(print);
}
