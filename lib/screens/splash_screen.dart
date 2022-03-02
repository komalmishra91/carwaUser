import 'dart:async';

import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/screens/choice_screen.dart';
import 'package:carwa_user/screens/signin_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SignIn()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 180,),
              Image.asset(AppImages.appLogo,height: 80,width: MediaQuery.of(context).size.width,),
              Expanded(child: Image.asset(AppImages.splashImg)),
            ],
          ),
        ));
  }
}
