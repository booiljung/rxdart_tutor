import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(1, 4)
  .pairwise()
  .listen(print);
}
