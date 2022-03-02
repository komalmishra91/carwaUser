import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/forgot_password.dart';
import 'package:carwa_user/screens/location_screen.dart';
import 'package:carwa_user/screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Registration",context: context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              SizedBox(height: 40,),

              CustomTextField(
                helperTxt: "Full Name",
                controller: fullNameController,
              ),
              SizedBox(height: 20,),
              CustomPhoneTextField(controller: phoneController,),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Email ",
                controller: emailController,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Password ",
                controller: passwordController,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Confirm Password ",
                controller: confirmPasswordController,
              ),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Next",ontap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:
                        (context) =>
                            VerifyOtp()
                    )
                );
              },),

              SizedBox(height: 5,),


            ],
          ),
        ),
      ),
    );
  }
}
