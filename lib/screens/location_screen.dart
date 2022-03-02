import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/forgot_password.dart';
import 'package:carwa_user/screens/homeScreen.dart';
import 'package:carwa_user/screens/jobPost_screen.dart';
import 'package:carwa_user/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  List title =["Allow","Deny"];
  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(context: context,title: ""),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Image.asset(AppImages.locationImg,),
              SizedBox(height: 40,),
              Text("Allow App to access this ",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 16),),
              Text("device's location?",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: 40,),
              Container(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: title.length,
                    itemBuilder: (context,index){
                      return  InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex = index;
                          });

                          if(index == 0){
                            Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context) =>
                                        HomeScreen()
                                )
                            );
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: selectedIndex == index?ColorConstants.yellow:Colors.white,
                            border: Border.all(color: ColorConstants.yellow,width: 2)
                          ),
                          child:Center(child: Text(title[index],style: TextStyle(color: selectedIndex == index?Colors.white:ColorConstants.yellow,fontWeight: FontWeight.normal,fontSize: 15),)) ,
                        ),
                      );}),
              )

            ],
          ),
        ),
      ),
    );
  }
}
