import 'package:rxdart/rxdart.dart';

void main() {
  Observable.error(Exception())
  .doOnError((error, stacktrace) => print("oh no"))
  .listen(null);
}
