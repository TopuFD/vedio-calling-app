import 'package:get/get.dart';
import 'package:vedio_call/view/auth_screen/controller/auth_controller.dart';

class DependencyInjection extends Bindings{
  @override
  void dependencies() {
    //=================================auth controller=======================>
    Get.lazyPut(()=>AuthController());
  }

}