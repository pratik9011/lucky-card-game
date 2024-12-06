import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lucky_card_game/components/size_config.dart';
import 'package:lucky_card_game/components/text_line.dart';

import 'buttons.dart';
import 'colors.dart';

Future showDialogYesNo(
        {required String title,
        required String content,
        String btnTitle = 'yes',
        onPressed}) =>
    Get.dialog(
      barrierDismissible: false,
      AlertDialog(
        backgroundColor: Colors.white,
        title: TextLine(title: title, fontSize: 20, isBold: true),
        content: TextLine(
          title: content,
          fontSize: 15,
          lines: 3,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRoundButton(
                  width: 110,
                  height: 40,
                  title: btnTitle,
                  onPressed: onPressed ?? () {},
                  backgroundColor: AppColors.buttonColor,
                  foregroundColor: AppColors.white),
              widthSpaceBox(size: 10),
              buildRoundButton(
                  width: 110,
                  height: 40,
                  title: "no",
                  onPressed: () {
                    Get.back();
                  },
                  backgroundColor: AppColors.buttonColor,
                  foregroundColor: AppColors.white),
            ],
          ),
        ],
      ),
    );

Future showDialogYesNoWithImage(
        {required String title,
        required String content,
        String btnTitle = 'yes',
        required String image,
        onPressed}) =>
    Get.dialog(
        barrierDismissible: false,
        AlertDialog(
          backgroundColor: AppColors.backgroundColor,
          title: Image.asset(
            image,
            height: 100,
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextLine(title: title, fontSize: 18, isBold: true),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: TextLine(title: content, fontSize: 12, lines: 1)),
            ),
            Center(
              child: buildRoundButton(
                width: 700,
                height: 50,
                title: translate(btnTitle),
                backgroundColor: AppColors.buttonColor,
                foregroundColor: AppColors.white,
                onPressed: onPressed ?? () {},
              ),
            ),
            Center(
                child: TextButton(
                    onPressed: () => Get.back(),
                    child: const TextLine(
                        title: "cancel", fontSize: 15, isBold: true))),
          ],
        ));

void showStatusPopup({
  required String title,
  required String content,
  bool isSuccess = false,
  onPressed,
  int seconds = 2,
}) {
  Get.dialog(AlertDialog(
    backgroundColor: Colors.white,
    title: Center(
        child: Text(
      translate(title),
      textAlign: TextAlign.center,
    )),
    content: SizedBox(
      height: heightSize(100),
      child: Column(
        children: [
          isSuccess
              ? const Icon(
                  Icons.check_circle,
                  color: AppColors.buttonColor,
                  size: 60,
                )
              : const Icon(
                  Icons.warning,
                  color: AppColors.red,
                  size: 60,
                ),
          TextLine(title: content, fontSize: 13, lines: 3),
        ],
      ),
    ),
  ));
  Future.delayed(Duration(seconds: seconds), onPressed);
}



Future errorShowDialog(
    {required String title,
      required String content,
      bool isSuccess = false,
      onPressed}) =>
    Get.dialog(
        barrierDismissible: false,
        AlertDialog(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
                translate(title),
                style: const TextStyle(
                  fontSize: 18,
                ),
              )),
          content: SizedBox(
            height: heightSize(100),
            child: Column(
              children: [
                isSuccess
                    ? const Icon(
                  Icons.check_circle,
                  color: AppColors.buttonColor,
                  size: 50,
                )
                    : const Icon(
                  Icons.warning,
                  color: AppColors.red,
                  size: 50,
                ),
                TextLine(title: content, lines: 3, fontSize: 12),
              ],
            ),
          ),
          actions: [
            buildRoundButton(
                width: double.infinity,
                height: 50,
                title: 'ok',
                onPressed: onPressed)
          ],
        ));

