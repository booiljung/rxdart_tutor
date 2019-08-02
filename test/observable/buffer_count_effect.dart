import 'package:rxdart/rxdart.dart';

void main() {
  Observable.range(1, 20)
    .bufferCount(6, 2)
    .listen(print);  
}
