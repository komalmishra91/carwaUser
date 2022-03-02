import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';


class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  double _rating =0.0;
  TextEditingController descriptionController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Add Review",context: context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(

            children: [


              Center(child: Text("Write your experience with the",style: TextStyle(color: CupertinoColors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
              Center(child: Text("driver/Company",style: TextStyle(color: CupertinoColors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              RatingBar(
                onRatingChanged: (rating) => setState(() => _rating = rating),
                filledIcon: Icons.star,
                initialRating: 1,
                emptyIcon: Icons.star_border,
                halfFilledIcon: Icons.star_half,
                isHalfAllowed: true,
                filledColor: Colors.yellow.shade700,
                emptyColor: Colors.grey,

                size: 50,
              ),
              SizedBox(height: 30,),
              Text("Your review",style: TextStyle(color: CupertinoColors.black,fontSize: 15,fontWeight: FontWeight.normal),),
              SizedBox(height: 10,),
              TextField(
                controller: descriptionController,
                maxLines: 8,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10,left: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.black),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.black),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.black),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "Write your experience here",
                    hintStyle: TextStyle(color:ColorConstants.grey,fontSize: 12)
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(bttnText: "Submit",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },),
            ],
          ),
        ),
      ),
    );
  }
}
