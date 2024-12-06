
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lucky_card_game/home_screen.dart';
import 'package:lucky_card_game/otp_screen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/dialogbox.dart';
class AuthController extends GetxController {
  var isLoading = false.obs;
  final name = TextEditingController();
  final email = TextEditingController();
  final mobileNo = TextEditingController();
  final password = TextEditingController();
  final otpController = OtpFieldController();
  RxString otp = ''.obs;
  RxString mobileNOString = ''.obs;
  RxInt seconds = 0.obs;

  final formKey = GlobalKey<FormState>();

  sendOTPApi() async {
    mobileNOString.value = mobileNo.text.trim();
    isLoading.value = true;

    mobileNo.text = mobileNo.text;
    isLoading.value = false;
    Get.to(()=>const OtpScreen());

  }

  verifyOTPApi() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    mobileNOString.value = mobileNo.text.trim();
    isLoading.value = true;

    mobileNo.text = mobileNo.text;
    isLoading.value = false;
    if("123456" == otp.value){
      await prefs.setString('mobile_no', mobileNo.text);
      await prefs.setBool('is_login', true);
      showStatusPopup(title: 'OTP is verify', content: 'OTP verify successfully...',isSuccess: true,onPressed: (){
        Get.offAll(()=>const HomeScreen());
      });

    }else{
      errorShowDialog(title: 'OTP is wrong', content: 'please enter valid OTP..',isSuccess: false,onPressed: (){
        Get.back();
      });
    }


  }



}
