import 'package:rxdart/rxdart.dart';

void main() async {
  Observable.fromIterable([1, "hi"])
  .ofType(TypeToken<String>())
  .listen(print);
}
