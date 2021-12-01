import 'package:elssa/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SizedBox(
          width:SizeConfig.screenWidth,
          child: Image.asset(
            "assets/logo.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
