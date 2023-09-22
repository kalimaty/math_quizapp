import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/game_screen.dart';
import './screens/welcome_screen.dart';

void main() {
  runApp(MathQuizApp());
}

class MathQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        // Hides Status bar and shows Navigation bar
        SystemUiOverlay.bottom,
      ],
    );
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        GameScreen.id: (context) => GameScreen(),
      },
    );
  }
}
