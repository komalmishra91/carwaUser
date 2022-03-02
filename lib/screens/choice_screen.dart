import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/screens/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ChoiceScreen extends StatefulWidget {
  @override
  _ChoiceScreenState createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          SignIn()
                      )
                  );
                },
                  child: Image.asset(AppImages.appLogo,height: 50,width: MediaQuery.of(context).size.width,)),
              SizedBox(height: 150,),
              Text("Choose Languauge",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 20,),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.grey,width: 1)
                ),
                child: Row(
                  children: [
                    Image.asset(AppImages.flagImg),
                    SizedBox(width:10),
                    Text("English",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 15),),
                    Spacer(),
                    Image.asset(AppImages.downArrow,height:20),

                  ],
                ),
              ),
              SizedBox(height: 80,),

              Text("Choose Country",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 20,),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.grey,width: 1)
                ),
              child: Row(
                children: [
                  Image.asset(AppImages.flag2Img,),
                 SizedBox(width:10),
                  Text("Iraq",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 15),),
                  Spacer(),
                  Image.asset(AppImages.downArrow,height: 20,),

                ],
              ),
              ),




        ]),
      ),

     ),
          );
  }




}
