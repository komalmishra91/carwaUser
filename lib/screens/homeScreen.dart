import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/screens/choice_screen.dart';
import 'package:carwa_user/screens/contact_us.dart';
import 'package:carwa_user/screens/jobPost_screen.dart';
import 'package:carwa_user/screens/incountry_jobs.dart';
import 'package:carwa_user/screens/main_screen.dart';
import 'package:carwa_user/screens/notification_screen.dart';
import 'package:carwa_user/screens/overseas_jobs.dart';
import 'package:carwa_user/screens/privacy_policy.dart';
import 'package:carwa_user/screens/profile_screen.dart';
import 'package:carwa_user/screens/signin_screen.dart';
import 'package:carwa_user/screens/terms_&_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Data> data =[];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List txt =["Profile","Home","Jobs","Notification","Privacy Policy","Terms & Conditions","Suppot/Contact Us","Change Language","Log Out"];



  @override

  void initState() {
    initList();
    // TODO: implement initState
    super.initState();
  }

  initList(){
    data.add(Data(image: AppImages.img2,title: "Small Truck"));


    data.add(Data(image: AppImages.img3,title: "Large Truck"));
    data.add(Data(image: AppImages.img4,title: "Pick Up"));
    data.add(Data(image: AppImages.img1,title: "Open Truck"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.lightBlue.shade50,
      drawer: drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
             SizedBox(height: 30,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      _key.currentState.openDrawer();
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        height: 50,width: 50,
                        child: Image.asset(AppImages.menuImg),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              NotificationScreen()
                          )
                      );
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        height: 50,width: 50,
                        child: Image.asset(AppImages.bellImg),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
              padding: EdgeInsets.only(left: 20, bottom: 10, top: 10,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.placeHolderImg),
                    SizedBox(width: 5,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border:InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Pick up:",
                            hintStyle: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 15),
                            contentPadding: EdgeInsets.only(bottom: 10)

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 1,thickness: 0.5,color: ColorConstants.grey,),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Image.asset(AppImages.locImg),
                    SizedBox(width: 5,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border:InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Drop:",
                            hintStyle: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 15),
                            contentPadding: EdgeInsets.only(bottom: 10)

                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
        ),
              SizedBox(height: 60,),
              Image.asset(AppImages.blueCircleImg,height: 120,),
              SizedBox(height: 60,),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20, bottom: 10, top: 10,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Job Type",style: TextStyle(color: ColorConstants.grey,fontWeight: FontWeight.normal,fontSize: 12),),
                      Row(
                        children: [
                          Text("In Country",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 12),),
                          Spacer(),
                          Image.asset(AppImages.downArrow,height: 10,)
                        ],
                      )
                    ],
                  ),

                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 100,

                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                    itemBuilder: (context,index){
                  return  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.24,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(data[index].image),
                          SizedBox(height: 10,),
                      Expanded(
                        child: Text(
                          data[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 9,
                              color: ColorConstants.black
                          ),),
                      ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 15,),
              CustomButton(bttnText: "Proceed",ontap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) =>
                        JobPost()
                    )
                );
              },),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }


  drawer(){
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              height: MediaQuery.of(context).size.height*0.18,
              color: HexColor("#5E56A3"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      child: InkWell(
                        onTap: (){
                          if(_key.currentState.isDrawerOpen){
                            _key.currentState.openEndDrawer();
                          }else{
                            _key.currentState.openDrawer();
                          }
                        },
                          child: Image.asset(AppImages.cancelImg1,height: 20,)),
                  alignment: Alignment.topRight,),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConstants.grey
                        ),
                        child: InkWell(
                            onTap: (){

                            },
                            child: Image.asset(AppImages.pic1Img,fit: BoxFit.cover,)),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Slim Khan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                          Text(
                            "slimKhan023@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: txt.length,
                itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  if(index == 0){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            ProfileScreen()
                        )
                    );
                  }
                  if(index == 1){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            HomeScreen()
                        )
                    );
                  }


                  if(index == 3){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            NotificationScreen()
                        )
                    );
                  }
                  if(index == 4){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            PrivacyPolicy()
                        )
                    );
                  }
                  if(index == 5){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                                TermsAndConditions()
                        )
                    );
                  }
                  if(index == 6){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                                ContactUs()
                        )
                    );
                  }
                  if(index == 7){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                                ChoiceScreen()
                        )
                    );
                  }
                  if(index == 8){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:
                            (context) =>
                                SignIn()
                        )
                    );
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,color: ColorConstants.grey
                      )
                    )
                  ),
                  child:  index==2?ExpansionTile(
                   initiallyExpanded: false,
                    expandedAlignment: Alignment.topLeft,

                    tilePadding: EdgeInsets.only(),
                    leading: Text(
                      "Jobs",
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: ColorConstants.black),
                    ),


                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context) =>
                                      MainScreen()
                                  )
                              );

                  },
                            child: Text(
                              "InCountry",
                              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,color: ColorConstants.grey),
                            ),
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap:(){
                              Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context) =>
                                          MainScreen()
                                  )
                              );

                            },
                            child: Text(
                              "Overseas",
                              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,color: ColorConstants.grey),
                            ),
                          ),
                        ],
                      )
                    ],
                  ):Text(
                    txt[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                         color: ColorConstants.black
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
class Data{
  String image;
  String title;
  Data({this.image,this.title});
}