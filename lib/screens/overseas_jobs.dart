import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/chat_screen.dart';
import 'package:carwa_user/screens/job_detail.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OverSeasJobs extends StatefulWidget {
  @override
  _OverSeasJobsState createState() => _OverSeasJobsState();
}

class _OverSeasJobsState extends State<OverSeasJobs> {
  List title =["Pending","Awarded","Running","Completed","Cancelled","Expired"];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "OverSeas",context: context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ListView(

            children: [
              Container(
                height: 40,
                child: ListView.builder(

                    itemCount: title.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){

                      return InkWell(
                        onTap: (){
                          setState(() {
                            selectedindex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 12,right: 12),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: selectedindex== index? HexColor("#5E56A3").withOpacity(0.8):Colors.white
                          ),
                          child: Center(child: Text(title[index],style: TextStyle(color: selectedindex== index?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20,),
              selectedindex == 0?_pendingListView():
              selectedindex==1?  _awardedListView(context,"Cancel", Row(
                children: [
                  Text(
                    "Awarded Price:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "400",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.yellow),
                  ),
                ],
              ),):

              selectedindex==2? _awardedListView(context,  "Pay",Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(
                    "Tracking Information:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: ColorConstants.black),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Your goods has been sent through Fedex and this is yout Tracking Number:A123DASHDH45AWEQ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "You can track your parcel https://www.fedex.com on this website via above tracking number",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              )):
              selectedindex == 3?_completedListView(context, Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(
                    "Tracking Information:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: ColorConstants.black),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Your goods has been sent through Fedex and this is yout Tracking Number:A123DASHDH45AWEQ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "You can track your parcel https://www.fedex.com on this website via above tracking number",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              )):
              selectedindex == 4?_completedListView(context, Image.asset(AppImages.chatImg)):
              selectedindex == 5?_expiredListView(context):SizedBox()

            ],
          ),
        ),
      ),
    );
  }
}

_pendingListView() {
  return ListView.builder(
      physics: NeverScrollableScrollPhysics(),

      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 10),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetail()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Job Id:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: ColorConstants.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "#467644",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Job Type:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "In Country",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Drop:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),

                            SizedBox(width: 3,),
                            Text(
                              "Gol Dak Khana,Iraq",
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Drop:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Airport,Iraq",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Job Date/Time: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color:ColorConstants.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "12/01/2022, 13:00",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(AppImages.forward_arrowImg,height: 18,)
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

_awardedListView(context,String buttonTxt,Widget awarded){
  return Column(
    children: [
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Job Id:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#467644",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  Spacer(),
                  Image.asset(AppImages.downArrow,height: 18,)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Type:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "In Country",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  SizedBox(width: 3,),
                  Text(
                    "Gol Dak Khana,Iraq",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Airport,Iraq",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Date/Time: ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color:ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "12/01/2022, 13:00",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.yellow
                    ),
                    child: Center(child: Text("Cancel",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(),
                  SizedBox(width: 10,),
                  Image.asset(AppImages.chatImg,height: 30,)
                ],
              )
            ],
          ),
        ),
      ),
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Job Id:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#467644",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  Spacer(),
                  Image.asset(AppImages.upward_arrow,height: 18,)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Type:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "In Country",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  SizedBox(width: 3,),
                  Text(
                    "Gol Dak Khana,Iraq",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Airport,Iraq",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Date/Time: ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color:ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "12/01/2022, 13:00",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Goods Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Furniture",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Vechicle Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Heavy Truck",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "User Amount:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "500",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Job Description: It is a long established fact that a reader will it is a long  ",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Driver Name:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sunil Khan",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Company Name:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "ABC",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Vechicle Number:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "IRQ 4569",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              awarded,
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.yellow
                    ),
                    child: Center(child: Text("Cancel",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(),
                  SizedBox(width: 10,),
                  Image.asset(AppImages.chatImg,height: 30,)
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}

_completedListView(context,Widget image){
  return Column(
    children: [
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Job Id:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#467644",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  Spacer(),
                  Image.asset(AppImages.downArrow,height: 18,)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Type:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "In Country",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  SizedBox(width: 3,),
                  Text(
                    "Gol Dak Khana,Iraq",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Airport,Iraq",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),


            ],
          ),
        ),
      ),
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Job Id:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#467644",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  Spacer(),
                  Image.asset(AppImages.upward_arrow,height: 18,)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Type:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "In Country",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  SizedBox(width: 3,),
                  Text(
                    "Gol Dak Khana,Iraq",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Airport,Iraq",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Date/Time: ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color:ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "12/01/2022, 13:00",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Goods Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Furniture",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Vechicle Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Heavy Truck",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "User Amount:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "500",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Job Description: It is a long established fact that a reader will it is a long  ",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Driver Name:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sunil Khan",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Company Name:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "ABC",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Vechicle Number:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "IRQ 4569",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),

              SizedBox(
                height: 10,
              ),
              image

            ],
          ),
        ),
      ),
    ],
  );
}
_expiredListView(context){
  return Column(
    children: [
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Job Id:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#467644",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  Spacer(),
                  Image.asset(AppImages.downArrow,height: 18,)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Type:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "In Country",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  SizedBox(width: 3,),
                  Text(
                    "Gol Dak Khana,Iraq",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Airport,Iraq",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),


            ],
          ),
        ),
      ),
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 20,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Job Id:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#467644",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorConstants.black),
                  ),
                  Spacer(),
                  Image.asset(AppImages.upward_arrow,height: 18,)
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Type:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "In Country",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  SizedBox(width: 3,),
                  Text(
                    "Gol Dak Khana,Iraq",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Drop:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Airport,Iraq",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Job Date/Time: ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color:ColorConstants.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "12/01/2022, 13:00",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Goods Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Furniture",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "Vechicle Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Heavy Truck",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    "User Amount:",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "500",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.black),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 1,thickness: 0.5,color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Job Description: It is a long established fact that a reader will it is a long  ",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.black
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    ],
  );
}
