import 'package:rxdart/rxdart.dart';

void main() async {
  final max = await Observable.fromIterable([1, 2, 3]).max();
  print(max);
}