import 'package:get/get.dart';
import 'package:workerapp/app/data/models/person.dart';

class SignUpController extends GetxController {
  final count = 0.obs;
  final person = Person().obs;
  final isObseure = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  getObseure() => isObseure.value;
  toggleObseure() => isObseure.value = !isObseure.value;
}
