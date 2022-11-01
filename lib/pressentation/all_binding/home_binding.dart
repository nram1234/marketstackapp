



import 'package:get/get.dart';
import 'package:marketstackapp/pressentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
