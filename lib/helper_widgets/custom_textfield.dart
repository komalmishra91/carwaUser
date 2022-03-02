import 'package:carwa_user/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextField extends StatelessWidget {
  Function ontap;
  String bttnText;
  TextEditingController controller;
  TextInputType inputType;
  TextInputAction textInputAction;
  Widget suffixIcon;
  Widget prefixIcon;
  String helperTxt;
  bool readonly;


  CustomTextField({this.bttnText,this.ontap,this.controller,this.inputType,this.textInputAction,this.suffixIcon,this.helperTxt,this.readonly = false,this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,color: ColorConstants.grey.withOpacity(0.5)),
        
      ),
      child: TextField(
        onTap:ontap,
        controller: controller,
        keyboardType: inputType,
        textInputAction: textInputAction,
        readOnly: readonly,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder:InputBorder.none,
          focusedBorder:InputBorder.none,

          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: helperTxt,
          hintStyle: TextStyle(color: HexColor("#515151").withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: 15)
        ),
      ),
    );
  }
}

class CustomPhoneTextField extends StatelessWidget {
  TextEditingController controller;



  CustomPhoneTextField({this.controller});
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Phone Number',
          hintStyle: TextStyle(color: HexColor("#515151").withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: 15),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10)
        ),
        enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10)
        ),
      ),
      initialCountryCode: 'IN',
      dropdownIconPosition: IconPosition.trailing,
      dropdownIcon: Icon(Icons.arrow_drop_down,color: ColorConstants.black,),
      disableLengthCheck: true,
      flagsButtonPadding: EdgeInsets.only(left: 10),
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      onCountryChanged: (country){
        print(country.name);
      },
    );
  }
}


