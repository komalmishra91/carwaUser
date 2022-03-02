import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/screens/homeScreen.dart';
import 'package:carwa_user/screens/incountry_jobs.dart';
import 'package:carwa_user/screens/jobPost_screen.dart';
import 'package:carwa_user/screens/overseas_jobs.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List screens = [InCountryJobs(),JobPost(),OverSeasJobs()];
  List image = [AppImages.inCountryImg,AppImages.blankImg, AppImages.overSeasImg,];
  List title = ["In Country Jobs", "PostJobs", "OverSeas Jobs"];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: 8,top: 20),
        child: InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) =>
                    JobPost()
                )
            );
          },
            child: Image.asset(AppImages.addImg,)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: PhysicalModel(
        color: Colors.white,
        elevation: 15,
        child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.08,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 12),
                      child: Column(

                        children: [

                          SizedBox(height: 10,),
                          Image.asset(image[index],height: 20,width: 20,color:  _selectedIndex==index?ColorConstants.yellow:Colors.grey,),
                          Text(title[index],style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                    ),
                  );
                })
        ),
      ),
      body: Center(
        child:screens[_selectedIndex],
      ),
    );
  }



}

