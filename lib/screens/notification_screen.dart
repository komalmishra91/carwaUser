import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Notifications",context: context),
      body: SafeArea(

        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(

            children: [
              ListView.builder(
                  shrinkWrap:  true,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                          padding: EdgeInsets.only(left: 20, bottom: 20, top: 20,right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Row(
                                       children: [
                                         Text(
                                           "Wade Warren",
                                           style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 12,
                                               color: ColorConstants.black
                                           ),
                                         ),
                                         SizedBox(width: 2,),
                                         Text(
                                           "Confirmed you",
                                           style: TextStyle(
                                               fontWeight: FontWeight.normal,
                                               fontSize: 12,
                                               color: ColorConstants.black
                                           ),
                                         ),
                                       ],
                                     ),
                                      Text(
                                        "Booking request:13:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: ColorConstants.grey.withOpacity(0.6)
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset(AppImages.chckImg,height: 30,)
                                ],
                              ),

                            ],
                          )
                      ),
                    );

                  }),

            ],
          ),
        ),
      ),
    );
  }
}
