import 'package:Shope_desgine/main.dart';
import 'package:Shope_desgine/ui/FullScreenImage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class WelcomeSpalashScreen extends StatefulWidget {
  @override
  _WelcomeSpalashScreenState createState() => _WelcomeSpalashScreenState();
}

class _WelcomeSpalashScreenState extends State<WelcomeSpalashScreen> {
  var assetsImage =
      DecorationImage(image: AssetImage('assets/images/spalshDesgine.png'));
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: MainScreen(),
      loaderColor: Colors.transparent,
      imageBackground: AssetImage('assets/images/splashDesgine.png'),
    );
  }
}
