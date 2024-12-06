import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../components/buttons.dart';
import '../components/colors.dart';
import '../components/size_config.dart';
import '../components/text_line.dart';
import '../controller/auth_controller.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key, this.testMood = false});

  final bool testMood;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: controller.mobileNo,
            // focusNode: focusNode,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => value!.isEmpty
                ? translate('Please enter phone number')
            // : !value.contains(RegExp(r'(^[0-9]{10}$)'))
                : !value.contains(RegExp(r'^[6-9]\d{9}$'))
                ? translate('Enter valid phone number')
                : null,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
            keyboardType: const TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:
                const BorderSide(color: AppColors.buttonColor),
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:
                const BorderSide(color: AppColors.buttonColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:
                const BorderSide(color: AppColors.buttonColor),
              ),
              fillColor: Colors.white,
              labelText: 'Mobile number',
              labelStyle: const TextStyle(
                color: AppColors.textColor,
              ),
              prefixIcon: const Icon(
                Icons.call_outlined,
                color: AppColors.buttonColor,
              ),
            ),
          ),
          heightSpaceBox(size: 20),
          Obx(
              ()=> buildRoundButton(
                width: double.infinity,
                height: 50,
                isLoading: controller.isLoading.value,
                title: 'login',
                onPressed: () {
                  if (testMood) {
                    if (formKey.currentState!.validate()) {
                      // Get.to(() => const OTPScreen());
                    }
                  } else {
                    if (formKey.currentState!.validate()) {
                        controller.sendOTPApi();
                    }
                  }
                },
                fontSize: 18),
          ),
          heightSpaceBox(size: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightSpaceBox(size: 10),
              const TextLine(
                  title: 'by logging you accepting',
                  fontSize: 14,
                  isBold: false),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: TextLine(
                        title: translate('terms & condition'),
                        fontSize: 14,
                        color: AppColors.buttonColor),
                    onTap: () async {

                    },
                  ),
                  const Text(
                    "and ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      translate('privacy & policy'),
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.buttonColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () async {

                    },
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}


