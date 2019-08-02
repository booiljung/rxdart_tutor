import 'package:rxdart/rxdart.dart';

void main() async {
  final min = await Observable.fromIterable([1, 2, 3]).min();
  print(min);
}