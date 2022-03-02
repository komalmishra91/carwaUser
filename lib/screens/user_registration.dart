import 'dart:io';

import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/forgot_password.dart';
import 'package:carwa_user/screens/location_screen.dart';
import 'package:carwa_user/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class UserRegistration extends StatefulWidget {
  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  File imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Registration",context: context,action: [
        Padding(
          padding:  EdgeInsets.only(right: 25,top: 15),
          child: Text("Skip",style: TextStyle(color: HexColor("#5E56A3"),fontWeight: FontWeight.bold,fontSize: 14),),
        ),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [

              InkWell(
                onTap: (){
                  gteImageFromCamera();
                },
                  child: imageFile==null?Image.asset(AppImages.accountImg,height: 120,):
                  Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConstants.grey
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                        child: Image.file(imageFile,fit: BoxFit.contain,)),
                  ),),
              SizedBox(height: 5,),
              Center(child: Text("Profile Picture",style: TextStyle(color: HexColor("##737373"),fontWeight: FontWeight.normal,fontSize: 12),)),
              SizedBox(height: 30,),
              CustomTextField(
                helperTxt: "Address",
                controller: addressController,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "City",
                controller: cityController,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Provinence/Country/State",
                controller: stateController,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Zip/Postal Code",
                controller: zipCodeController,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Country",
                controller: countryController,
              ),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Submit",ontap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) =>
                        LocationScreen()
                    )
                );
              },),

            ],
          ),
        ),
      ),
    );
  }

  gteImageFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {

      imageFile = File(pickedFile.path);
      setState(() {

      });

    }
  }
}

