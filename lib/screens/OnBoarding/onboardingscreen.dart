import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:whatapp_clone/Widgets/uihelper.dart';
import 'package:whatapp_clone/screens/Login/loginscreen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/borading.png"),
            SizedBox(
              height: 20,
            ),
            uiHelper.CustomText(
                text: "Welcome to WhatsApp",
                height: 20,
                color: Color(0XFF000000)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiHelper.CustomText(text: "Read Out", height: 14,),
                uiHelper.CustomText(text: " Privacy Policy.", height: 14, color: Color(0XFF0C42CC)),
                uiHelper.CustomText(text: "Tab '' Agree and continue''.", height: 14,)
              ],),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiHelper.CustomText(text: "To accept the", height: 14),
                uiHelper.CustomText(text: "Teams of Service", height:14,color: Color(0XFF0C42CC))
              ],
            )
          ],
        ),
      ),

      floatingActionButton: uiHelper.CustomButton(
          callback: (){
           Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginscreen()));
          }, buttonname: "agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
