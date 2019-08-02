import 'package:rxdart/rxdart.dart';

// What is the 'Data'?

void main() {
  Observable<Data> memory;
  Observable<Data> disk;
  Observable<Data> network;

  Observable<Data> getThatData =
    memory.switchIfEmpty(disk).switchIfEmpty(network);
}
