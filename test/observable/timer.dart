import 'package:rxdart/rxdart.dart';

void main(){
  Observable.timer(
    "hi",
    Duration(seconds: 5)
  )
    .listen((i) => print(i));
}
