import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/forgot_password.dart';
import 'package:carwa_user/screens/registration_screen.dart';
import 'package:carwa_user/screens/user_registration.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Verify",context: context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Please Enter Verification Code",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Code send to",style: TextStyle(color: HexColor("#737373"),fontWeight: FontWeight.normal,fontSize: 12),),
                  SizedBox(width: 5,),
                  Text("+91 9876543223",style: TextStyle(color: HexColor("#5E56A3"),fontWeight: FontWeight.bold,fontSize: 12),),

                ],
              ),
              SizedBox(height: 40,),
             Container(
               height: 70,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: 4,
                   shrinkWrap:  true,
                   itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: ColorConstants.grey)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 25,right: 10,top: 10),
                        hintText: "0",

                      ),
                    ),
                  );
               }),
             ),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Verify",ontap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) =>
                        UserRegistration()
                    )
                );
              },),
              SizedBox(height: 10,),

              InkWell(

                  child: Text("Resend OTP",style: TextStyle(color: HexColor("#00000029").withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: 12),)),


            ],
          ),
        ),
      ),
    );
  }
}
