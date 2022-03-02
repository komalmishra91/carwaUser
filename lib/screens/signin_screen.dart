import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/forgot_password.dart';
import 'package:carwa_user/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Sign In",context: context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            child: Column(
              children: [
               SizedBox(height: 40,),
                Image.asset(AppImages.appLogo,height: 50,width: MediaQuery.of(context).size.width,),
            SizedBox(height: 80,),
                CustomPhoneTextField(controller: phoneController,),




                SizedBox(height: 20,),
                CustomTextField(
                  helperTxt: "Password",
                  controller: passwordController,
                ),
                SizedBox(height: 20,),
                CustomButton(bttnText: "Sign In",ontap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          Registration()
                      )
                  );
                },),
                SizedBox(height: 10,),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            ForgotPassword()
                        )
                    );
                  },
                    child: Text("Forgot Password?",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 12),)),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a account?",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 12),),
                    SizedBox(width: 5,),
                    Text("Sign Up",style: TextStyle(color: HexColor("#5E56A3"),fontWeight: FontWeight.bold,fontSize: 12),),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
