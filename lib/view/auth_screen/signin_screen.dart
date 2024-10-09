import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vedio_call/core/app_route.dart';
import 'package:vedio_call/utils/app_string.dart';
import 'package:vedio_call/utils/color.dart';
import 'package:vedio_call/utils/image.dart';
import 'package:vedio_call/view/auth_screen/controller/auth_controller.dart';
import 'package:vedio_call/widgets/custom_text_field.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  AuthController authController = Get.find<AuthController>();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              width: Get.width,
              child: Image.asset(
                AppImage.topImageOne,
                width: Get.width,
                fit: BoxFit.cover,
              )),
          Image.asset(AppImage.logo),
          const SizedBox(
            height: 10,
          ),
          Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
                child: Column(
                  children: [
                    CustomTextField(
                      textEditingController:
                          authController.emailController.value,
                      hintText: AppString.writeEmail,
                      prefixIcon: Icons.email,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      textEditingController:
                          authController.emailController.value,
                      hintText: AppString.writePass,
                      prefixIcon: Icons.lock,
                    )
                  ],
                ),
              )),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  AppString.forget,
                  style: TextStyle(
                    color: AppColor.lightBlue,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 0.60,
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppString.signIn,
            style: TextStyle(
              color: AppColor.deepBlue,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              height: 0,
              letterSpacing: 0.80,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppString.or,
            style: TextStyle(
              color: AppColor.deepBlue,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.google,
                height: 45,
                width: 45,
                fit: BoxFit.cover,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook_outlined,
                    color: Colors.blue,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.apple,
                    color: AppColor.blackColor,
                    size: 50,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(children: [
            const TextSpan(
              text: AppString.dontHaveAccount,
              style: TextStyle(
                color: Color(0xFF5E6ABF),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 0.60,
              ),
            ),
            const TextSpan(text: " "),
            TextSpan(
                text: AppString.signUp,
                style: const TextStyle(
                  color: Color(0xFF243D8F),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.60,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(AppRoute.signUpScreen);
                  })
          ]))
        ],
      ),
    );
  }
}
