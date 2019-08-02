import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(1, 7)
    .bufferCount(3)
    .listen(print);  
}
