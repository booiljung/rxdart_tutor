import 'package:rxdart/rxdart.dart';

void main() {
  Observable
  .merge([
    Observable.just(1),
    Observable.error(Exception()),
    Observable.just(2),
    Observable.error(Exception()),
  ])
  .listen(
    (value) => print("value: $value"),
    onError: (value) => print("error: $value")
  );  
}
