import 'package:carwa_user/constants/colors.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  Function ontap;
  String bttnText;

  CustomButton({this.bttnText,this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child:  Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 12,bottom: 12,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:ColorConstants.yellow
        ),
        child: Center(
          child: Text(bttnText,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.white),),
        ),
      ),
    );
  }
}