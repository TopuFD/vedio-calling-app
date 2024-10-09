import 'package:get/get.dart';
import 'package:vedio_call/view/auth_screen/signin_screen.dart';
import 'package:vedio_call/view/auth_screen/signup_screen.dart';
//  routes
class AppRoute {
  static const signinScreen = "/signinScreen";
  static const signUpScreen = "/signUpScreen";
  static List<GetPage> pages = [
    GetPage(name: signinScreen, page: ()=> SigninScreen()),
    GetPage(name: signUpScreen, page: ()=> SignupScreen()),
  ];

}