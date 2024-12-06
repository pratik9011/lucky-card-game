import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lucky_card_game/components/size_config.dart';
import 'package:lucky_card_game/components/text_line.dart';
import 'package:lucky_card_game/lobby_screen.dart';
import 'package:lucky_card_game/login_screen.dart';
import 'package:lucky_card_game/widget/rotation_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/dialogbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController controller;
    return Scaffold(
      // backgroundColor: Colors.black,
      extendBody: true,
      appBar: appMain(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/Background.png'),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                            Center(
                              child: RotateImage(),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 55,
                          child: Image.asset(
                            'assets/images/I Icon.png',
                            height: 40,
                          )),
                      Positioned(
                          top: 20,
                          child: Image.asset(
                            'assets/images/Sound Icon.png',
                            height: 40,
                          )),
                      const Positioned(
                          top: 10,
                          right: 0,
                          child: TextLine(
                            title: 'DRAW TIME',
                            fontSize: 16,
                            color: Colors.white,
                          )),
                      const Positioned(
                          top: 25,
                          right: 30,
                          child: TextLine(
                            title: '6:07',
                            fontSize: 16,
                            color: Colors.white,
                          )),
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child: Image.asset(
                            'assets/images/Play & Win.png',
                            height: 120,
                          )),
                      Positioned(
                          right: 10,
                          bottom: 40,
                          child: Image.asset(
                            'assets/images/Timer.png',
                            height: 60,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal = 179,
                child: Column(
                  children: [
                    heightSpaceBox(size: 150),
                    Image.asset(
                      'assets/images/Options Button.png',
                      width: 150,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.safeBlockHorizontal = 310,
                      // height:SizeConfig.safeBlockVertical= 300,
                      decoration: const BoxDecoration(
                          // color: Colors.red,
                          // border: Border.all(color: Colors.red),
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/Heart.png',
                                height: 50,
                              ),
                              Image.asset(
                                'assets/images/Clubs.png',
                                height: 50,
                              ),
                              Image.asset(
                                'assets/images/Diamonds.png',
                                height: 50,
                              ),
                              Image.asset(
                                'assets/images/Clubs.png',
                                height: 50,
                              ),
                              Image.asset(
                                'assets/images/Bet_in_out.png',
                                height: 50,
                              ),
                            ],
                          ),
                          Stack(
                            // fit:StackFit.loose,
                            children: [
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal = 489,
                                height: 220,
                              ),
                              Positioned(
                                right: 70,
                                child: HoverImage(),
                              ),
                              Positioned(
                                right: 130,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 190,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 250,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 130,
                                top: 50,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 250,
                                top: 50,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                left: 180,
                                top: 50,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 250,
                                top: 100,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 130,
                                top: 100,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                left: 180,
                                top: 100,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 190,
                                top: 100,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 190,
                                top: 50,
                                child: Image.asset(
                                  'assets/images/Cards.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 5,
                                top: 50,
                                child: Image.asset(
                                  'assets/images/All Jocks.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 5,
                                top: 0,
                                child: Image.asset(
                                  'assets/images/All Kings.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                right: 5,
                                top: 100,
                                child: Image.asset(
                                  'assets/images/All Kings.png',
                                  height: 50,
                                ),
                              ),
                              Positioned(
                                bottom: -30,
                                right: -10,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Card & time.png',
                                      width: 200,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 140,
                                left: 10,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Place Your Chips.png',
                                      width: 70,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: -50,
                                left: 123,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Coins.png',
                                      width: 150,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: -5,
                                right: 0,
                                child: InkWell(
                                    onTap: () {
                                      showDialogYesNo(
                                          title: "are you sure",
                                          content: "are you sure to logout",
                                          onPressed: () async {
                                            final SharedPreferences prefs =
                                                await SharedPreferences
                                                    .getInstance();
                                            prefs.clear();
                                            Get.offAll(()=>const LoginScreen());
                                          });
                                    },
                                    child: const Icon(
                                      Icons.logout,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularInputField extends StatelessWidget {
  const CircularInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: controller,
      decoration: InputDecoration(
        labelText: 'Enter Ticket ID...',
        labelStyle: const TextStyle(
          fontSize: 10,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        // Optional background color
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0), // Circular border radius
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
              color: Colors.blue, width: 2.0), // Focused border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
              color: Colors.grey, width: 1.0), // Normal border color
        ),
      ),
    );
  }
}

dynamic appMain() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        InkWell(
          onTap: () {
            showDialogYesNo(
                title: 'Are you sure',
                content: 'are you sure to go lobby',
                // image: 'assets/images/Wheel.png',
                onPressed: () {
                  Get.to(() => const LobbyScreen());
                });
          },
          child: Image.asset(
            'assets/images/Lobby Button.png',
            height: 100,
            width: 80,
          ),
        ),
        const SizedBox(height: 30, width: 100, child: CircularInputField()),
        InkWell(
          onTap: (){
            showStatusPopup(title: 'congratulation', content: "are yo win 10 coins",isSuccess: true,onPressed: (){
              Get.back();
            });
          },
          child: Image.asset(
            'assets/images/Claim_button.png',
            height: 70,
            width: 80,
          ),
        ),
        widthSpaceBox(size: 50),
        Image.asset(
          'assets/images/Welcome Box.png',
          height: 100,
          width: 130,
        ),
        widthSpaceBox(size: 8),
        Image.asset(
          'assets/images/game id.png',
          height: 100,
          width: 130,
        ),
        widthSpaceBox(size: 8),
        Image.asset(
          'assets/images/balance_box.png',
          height: 100,
          width: 130,
        ),
      ],
    ),
  );
}

class HoverImage extends StatelessWidget {
  HoverImage({Key? key}) : super(key: key);

  final ValueNotifier<double> _scale =
      ValueNotifier<double>(1.0); // Scale factor for hover

  void _onHover(bool isHovering) {
    _scale.value = isHovering ? 1.2 : 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: ValueListenableBuilder<double>(
        valueListenable: _scale,
        builder: (context, scale, child) {
          return AnimatedScale(
            duration: const Duration(milliseconds: 300),
            scale: scale, // Apply scale transformation when hovered
            child: Image.asset(
              'assets/images/Cards.png',
              height: 50,
            ), // Replace with your image
          );
        },
      ),
    );
  }
}
