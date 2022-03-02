import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TermsAndConditions extends StatefulWidget {
  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title:"Terms and Conditions",context: context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal data can take many forms. It could be the user's name, email address, telephone number or physical address. It can also be less obvious types of data such as IP addresses, log data and information collected through cookies."
                    "In this article, we'll look at what the requirements are, how to add a Privacy Policy to your mobile app, and provide examples of where to display your Privacy Policy within your app. ",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "YOUR CONSENT ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "Personal data can take many forms. It could be the user's name, email address, telephone number or physical address. It can also be less obvious types of data such as IP addresses, log data and information collected through cookies."
                    "In this article, we'll look at what the requirements are, how to add a Privacy Policy to your mobile app, and provide examples of where to display your Privacy Policy within your app. ",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "COOKIES",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "Personal data can take many forms. It could be the user's name, email address, telephone number or physical address. It can also be less obvious types of data such as IP addresses, log data and information collected through cookies."
                    "In this article, we'll look at what the requirements are, how to add a Privacy Policy to your mobile app, and provide examples of where to display your Privacy Policy within your app. ",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.black
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
