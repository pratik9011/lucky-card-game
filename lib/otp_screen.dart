import 'package:flutter/material.dart';
import 'package:lucky_card_game/widget/otp_widget.dart';

import 'components/size_config.dart';
import 'components/text_line.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            heightSpaceBox(size: 30),
            Center(
              child: Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  children: [
                    TextLine(
                      title: "login",
                      fontSize: 30,
                      isBold: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: OtpWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
