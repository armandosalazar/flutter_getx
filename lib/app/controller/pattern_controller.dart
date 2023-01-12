import 'package:get/get.dart';

class PatternController extends GetxController {
  final RxString _num = ''.obs;

  get num => this._num.value;
  set num(value) => this._num.value = value;

  // increment() {
  //   num++;
  // }

  // decrement() {
  //   num--;
  // }
}
