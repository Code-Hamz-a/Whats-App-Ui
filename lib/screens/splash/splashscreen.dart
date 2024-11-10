import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatapp_clone/Widgets/uihelper.dart';
import 'package:whatapp_clone/screens/OnBoarding/onboardingscreen.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            SizedBox(
              height: 20,
            ),
            uiHelper.CustomText(
                text: "WhatsApp", height: 18, fontweight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
