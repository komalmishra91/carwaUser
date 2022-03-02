import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/demo.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {



  @override

  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: ColorConstants.black, width: 1))),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        AppImages.backArrowImg,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 40),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              AppImages.pic1Img,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Slim Khan",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Saturday, 12:00",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.grey.withOpacity(0.5)),
            ),
            SizedBox(height: 20,),


            ChatBubble(
              text: 'How was the concert?',
              isCurrentUser: false,
            ),
            ChatBubble(
              text: 'Awesome! Next time you gotta come as well!',
              isCurrentUser: true,
            ),
            ChatBubble(
              text: 'Ok, when is the next date?',
              isCurrentUser: false,
            ),
            ChatBubble(
              text: 'They\'re playing on the 20th of November',
              isCurrentUser: true,
            ),
            ChatBubble(
              text: 'Let\'s do it!',
              isCurrentUser: false,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(AppImages.cameraImg),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 200,
                    width: 300,
                    color: ColorConstants.grey,
                    child: TextField(

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        filled: true,
                        fillColor: ColorConstants.grey,

                      ),
                    ),
                  ),
                ),





              ],
            )





          ],
        ),







        ),
      );

  }
}

