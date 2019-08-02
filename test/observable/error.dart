import 'package:rxdart/rxdart.dart';

void main() {
  Observable.error(ArgumentError())
  .listen((onData){
    // immediately complete! bellow codes do not run.
    print(onData + " 333434");
  });
}