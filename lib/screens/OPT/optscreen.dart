import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp_clone/Widgets/uihelper.dart';

class OPTScreen extends StatelessWidget {
  String phonenumber;
  OPTScreen({required this.phonenumber});
  TextEditingController otp1Controller=TextEditingController();
  TextEditingController otp2Controller=TextEditingController();
  TextEditingController otp3Controller=TextEditingController();
  TextEditingController otp4Controller=TextEditingController();
  TextEditingController otp5Controller=TextEditingController();
  TextEditingController otp6Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            uiHelper.CustomText(
                text: "Verifying Your Number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(height: 10,),

            uiHelper.CustomText(
              text: "You've tried to register +92 ${phonenumber} ",
              height: 15,
            ),
            SizedBox(height: 10,),
            uiHelper.CustomText(
                text: "recently. Wait before requesting an sms or a call",
                height: 15),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiHelper.CustomText(text: "with your code", height: 16),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: uiHelper.CustomText(
                      text: " wrong number?",
                      height: 15,
                      color: Color(0XFF00A884)),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uiHelper.CustomContainer(otp1Controller),
                SizedBox(width: 10,),
                uiHelper.CustomContainer(otp2Controller),
                SizedBox(width: 10,),

                uiHelper.CustomContainer(otp3Controller),
                SizedBox(width: 10,),

                uiHelper.CustomContainer(otp4Controller),
                SizedBox(width: 10,),

                uiHelper.CustomContainer(otp5Controller),
                SizedBox(width: 10,),

                uiHelper.CustomContainer(otp6Controller)
              ],
            ),
            SizedBox(height: 30,),
            uiHelper.CustomText(text: "Didn't recive Code?", height: 15, color: Color(0XFF00A884))
          ],
        ),
      ),

      floatingActionButton: uiHelper.CustomButton(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
