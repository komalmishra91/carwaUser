import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  TextEditingController descriptionController =TextEditingController();
  TextEditingController subjectController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Support/Contact Us",context: context),
      body: SafeArea(

        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child:Column(
            children: [
              CustomTextField(helperTxt: "Subject",controller: subjectController,),
              SizedBox(height: 20,),
              TextField(
                controller: descriptionController,
                maxLines: 8,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10,left: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: ColorConstants.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: ColorConstants.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: ColorConstants.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "Write your experience here",
                    hintStyle: TextStyle(color:ColorConstants.grey,fontSize: 12)
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Submit",ontap: (){
                FocusScope.of(context).unfocus();
                 showDialouge();
              },),
            ],
          ),
        ),
      ),
    );
  }

  showDialouge(){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context,setstate){
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20.0)), //this right here
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),

                  height: MediaQuery.of(context).size.height*0.30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Align(
                       alignment: Alignment.topRight,
                         child: InkWell(
                             onTap: (){
                               Navigator.pop(context);
                             },
                             child: Image.asset(AppImages.cancelImg,height: 30,))),
                      Text("Thank you !",style: TextStyle(color: ColorConstants.yellow,fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Your message will be submitted ",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 13),),
                      SizedBox(height: 3,),
                      Text("successfully and will be respond to  ",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 13),),
                      SizedBox(height: 3,),
                      Text("as soon as possible.Thank you for  ",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 13),),
                      SizedBox(height: 3,),
                      Text("contacting us.  ",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.normal,fontSize: 13),),

                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
