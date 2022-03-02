import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class JobDescription extends StatefulWidget {
  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  List title =["Yes","No"];
  List data =["Accept","Decline"];
  int selectedIndex;
  int selectedButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Job Id:#456674",context: context),
      body: SafeArea(

        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: ListView(

            children: [
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: ColorConstants.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(

                  children: [
                    Row(


                      children: [
                        SizedBox(width: 30,),
                        Image.asset(AppImages.logistic1Img,height: 50,),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Igor Antonovich",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: ColorConstants.black),
                            ),

                            Container(
                              height: 20,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  shrinkWrap: true,
                                  itemBuilder: (context,index){
                                    return Image.asset(AppImages.star);
                                  }),
                            ),

                          ],
                        ),

                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Rating & Reviews",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: ColorConstants.black
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(AppImages.star),
                          SizedBox(width: 5,),
                          Text(
                            "4.4",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: ColorConstants.black
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Overall Rating",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                            color: ColorConstants.black
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [

                      Text(
                        "34",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ColorConstants.black
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Overall Rating",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                            color: ColorConstants.black
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                  color: HexColor("#F3F3F3").withOpacity(0.5)
                ),
                child: Column(

                  children: [
                    Text(
                      "Would you like to rate us on Carwa?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: ColorConstants.black
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 40,
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => JobDescription()),
                                  );
                                }

                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 30,right: 30,top: 5,bottom: 5),
                                margin: EdgeInsets.only(left: 20),
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
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap:  true,
                itemCount: 2,
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
                                Container(
                                  height: 40,width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorConstants.grey
                                  ),
                                  child: Image.asset(AppImages.picImg,fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ignor Antonovich",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: ColorConstants.black
                                      ),
                                    ),
                                    Text(
                                      "12 Jan 2022 , 13:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: ColorConstants.grey
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.black
                              ),
                            ),
                          ],
                        )
                    ),
                  );

              }),
              SizedBox(height: 20,),
              Container(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context,index){
                      return  InkWell(
                        onTap: (){
                          setState(() {
                            selectedButton = index;
                          });
                          if(index == 0){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ReviewScreen()),
                            );
                          }

                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 5),
                          margin: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: selectedButton == index?ColorConstants.yellow:Colors.white,
                              border: Border.all(color: ColorConstants.yellow,width: 2)
                          ),
                          child:Center(child: Text(data[index],style: TextStyle(color: selectedButton == index?Colors.white:ColorConstants.yellow,fontWeight: FontWeight.normal,fontSize: 15),)) ,
                        ),
                      );}),
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
