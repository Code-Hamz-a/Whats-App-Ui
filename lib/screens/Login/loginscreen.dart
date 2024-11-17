import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp_clone/Widgets/uihelper.dart';
import 'package:whatapp_clone/screens/OPT/optscreen.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = "Pakistan";

  List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Pakistan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: uiHelper.CustomText(
                text: "Enter Your Phone Number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          uiHelper.CustomText(
            text: "WhatsApp will need to verify your Phone",
            height: 14,
          ),
          uiHelper.CustomText(
            text: "number.Carrier charges may apply",
            height: 14,
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  child: Text(country.toString()),
                  value: country,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedcountry = value!;
                });
              },
              value: selectedcountry,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "+92",
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)))),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 210,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)))),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: uiHelper.CustomButton(callback: (){
        login(phoneController.text.toString());
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber){
    if(phonenumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Phone Number"),backgroundColor: Color(0XFF00A884),));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OPTScreen(phonenumber: phonenumber,)));
    }
  }
}
