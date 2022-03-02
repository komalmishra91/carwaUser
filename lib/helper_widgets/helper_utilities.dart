import 'package:carwa_user/constants/assets.dart';
import 'package:flutter/material.dart';

class HelperUtility{




    static appBar({String title,context,List<Widget> action}){
    return PreferredSize(
      preferredSize: Size.fromHeight(100), //
      child: Padding(
        padding:  EdgeInsets.only(top: 20,left: 20),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:  InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Image.asset(AppImages.backArrowImg,)),
          title: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          centerTitle: true,
          actions: action,
        ),
      ),
    );
  }
}