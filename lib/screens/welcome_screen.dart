import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants/constants.dart';
import '../screens/game_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static final id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(25.0),
          child: AnimatedTextKit(
            pause: Duration(milliseconds: 200),
            repeatForever: true,
            // stopPauseOnTap: false,
            animatedTexts: [
              FlickerAnimatedText('azhar',
                  textStyle: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.white,
                      fontSize: 35)),
              FlickerAnimatedText('Faisal',
                  textStyle: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.white,
                      fontSize: 35)),
              FlickerAnimatedText('Math Game',
                  textStyle: TextStyle(
                      fontFamily: "Lobster",
                      color: Colors.white,
                      fontSize: 35)),
            ],
            onTap: () {
              Navigator.pushNamed(context, GameScreen.id);
            },
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: AbsorbPointer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Math Quiz \nFaisalGame',
                        textAlign: TextAlign.center,
                        textStyle: kAnimationTextStyle,
                        colors: kColorizeAnimationColors,
                      )
                    ],
                    repeatForever: true,
                  ),
                ),
                Text(
                  'Tap to Start',
                  textAlign: TextAlign.center,
                  style: KTapToStartTextStyle,
                )
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, GameScreen.id);
          },
        ),
      ),
    );
  }
}
