import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Profile",context: context,action: [
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
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
                "Edit",
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


