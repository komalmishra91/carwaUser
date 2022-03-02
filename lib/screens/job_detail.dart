import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/job_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobDetail extends StatefulWidget {
  @override
  _JobDetailState createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  List title =["Accept","Decline"];
  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Job Id:#456674",context: context),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15,right: 15),
          child: ListView(
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
                          Image.asset(AppImages.upward_arrow,height: 18,)
                        ],
                      ),
                      SizedBox(
                        height: 6,
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
                        height: 10,
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
                        height: 10,
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
                        height: 10,
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
                        height: 10,
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
                        height: 10,
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
                        height: 10,
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
                        height: 20,
                      ),
                      Text(
                        "Offers",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: ColorConstants.black
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        shrinkWrap:  true,
                        itemCount:  2,
                          itemBuilder: (context,index){
                        return Container(
                          padding: EdgeInsets.only(right: 10,bottom: 10),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: ColorConstants.grey),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(

                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(AppImages.logistic1Img,height: 80,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Igor Antonovich",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
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
                                      Row(
                                        children: [
                                          Text(
                                            "Offer Amount:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: ColorConstants.black),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "400",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: ColorConstants.yellow),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset(AppImages.forward_arrowImg,height: 20,),

                                ],
                              ),
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
                                          margin: EdgeInsets.only(left: 10),
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
                        );
                      }),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
