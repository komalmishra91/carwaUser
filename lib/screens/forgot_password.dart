import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Forgot Password",context: context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [


              CustomPhoneTextField(),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Send me reset code",ontap: (){
              },),
              SizedBox(height: 60,),

              Text("Enter verification code",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 10,),
              CustomTextField(
                helperTxt: "OTP",
                suffixIcon:  Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10),
                  child: Text("Verify",style: TextStyle(color: HexColor("#5E56A3"),fontWeight: FontWeight.bold,fontSize: 14),),
                ),
              ),
              SizedBox(height: 80,),
              CustomTextField(
                helperTxt: "Create Password",
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Confirm Password",
              ),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Submit",ontap: (){
               Navigator.pop(context);
              },),

            ],
          ),
        ),
      ),
    );
  }
}
