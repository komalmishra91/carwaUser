import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/choice_screen.dart';
import 'package:carwa_user/screens/contact_us.dart';
import 'package:carwa_user/screens/notification_screen.dart';
import 'package:carwa_user/screens/privacy_policy.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List title =["Change Language","Change Password"];
  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Profile",context: context,action: [
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
          child: Container(
            width: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorConstants.yellow,
                borderRadius: BorderRadius.circular(20)
            ),
            child:Center(
              child: Text(
                "Save",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white
                ),
              ),
            ),
          ),
        )
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ListView(

            children: [
              Container(
                height: 120,width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorConstants.grey
                ),
                child: Image.asset(AppImages.pic1Img,fit: BoxFit.contain,),
              ),
              textfiled(title: "Full Name",helperTxt: "Habiba Khan"),
              textfiled(title: "Phone Number",helperTxt: "+91 9876543234"),
              textfiled(title: "Email Address",helperTxt: "habibakhan123@gmail.com"),
              textfiled(title: "Address",helperTxt: "D-205,Sector 2,Chitrakoot"),
              textfiled(title: "City",helperTxt: "Jaipur"),
              textfiled(title: "Provinence/City/State",helperTxt: "Rajasthan"),
              textfiled(title: "Zip/Postal Code",helperTxt: "242001"),
              textfiled(title: "Country",helperTxt: "India"),
              SizedBox(height: 20,),
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
                                    ChoiceScreen()
                                )
                            );
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                          margin: EdgeInsets.only(right: 5,),
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
  textfiled({String helperTxt,TextEditingController controller,String title}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: ColorConstants.grey.withOpacity(0.5)
          ),),
        TextField(
          controller:  controller,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1,
                      color: ColorConstants.grey.withOpacity(0.5)
                  )
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1,
                      color: ColorConstants.grey.withOpacity(0.5)
                  )
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1,
                      color: ColorConstants.grey.withOpacity(0.5)
                  )
              ),
              hintText: helperTxt,
              hintStyle: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 15),
              contentPadding: EdgeInsets.only(bottom: 10)

          ),
        ),

      ],
    );
  }
}
