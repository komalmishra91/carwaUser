import 'package:carwa_user/constants/assets.dart';
import 'package:carwa_user/constants/colors.dart';
import 'package:carwa_user/helper_widgets/custom_button.dart';
import 'package:carwa_user/helper_widgets/custom_textfield.dart';
import 'package:carwa_user/helper_widgets/helper_utilities.dart';
import 'package:carwa_user/screens/forgot_password.dart';
import 'package:carwa_user/screens/incountry_jobs.dart';
import 'package:carwa_user/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class JobPost extends StatefulWidget {
  @override
  _JobPostState createState() => _JobPostState();
}

class _JobPostState extends State<JobPost> {

  List <Data> data =[];
  List txt =["Book Now","Book Later"];
  int selectedIndex;
  String isbooklater;
  @override

  void initState() {
    initList();
    // TODO: implement initState
    super.initState();
  }

  initList(){
    data.add(Data(image: AppImages.cloudImg,title: "Furniture"));
    data.add(Data(image: AppImages.boxImg,title: "Boxes"));
    data.add(Data(image: AppImages.carImg,title: "Car"));
    data.add(Data(image: AppImages.byceImg,title: "Byce"));
    data.add(Data(image: AppImages.tractorImg,title: "Other"));
    data.add(Data(image: AppImages.homeImg,title: "Moving home"));
    data.add(Data(image: AppImages.pickupImg,title: "Haudge"));
    data.add(Data(image: AppImages.boatImg,title: "Boats"));
    data.add(Data(image: AppImages.wheelImg,title: "Vechicle paris"));
    data.add(Data(image: AppImages.box2Img,title: "piano"));
    data.add(Data(image: AppImages.footImg,title: "Pets & LiveStocks"));
    data.add(Data(image: AppImages.qImg,title: "Other"));
  }


  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String formattedDate;
  var formattedTime;
  int selectedindex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HelperUtility.appBar(title: "Job Post",context: context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(

            children: [
              CustomTextField(helperTxt: "Job Type",),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Pickup Location",
                suffixIcon: Image.asset(AppImages.placeHolderImg),
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Drop Location",
                suffixIcon: Image.asset(AppImages.locImg),
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Vechicle Category",
                suffixIcon: Icon(Icons.keyboard_arrow_down,color: ColorConstants.black,size: 25,),
              ),
              SizedBox(height: 20,),
              Text("Select Goods Category ",style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 10,),
            Container(
              height: 280,

              child: GridView.builder(
                itemCount: data.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  childAspectRatio: 3/2.9
                ),
                itemBuilder: (BuildContext context, int index){
                  return InkWell(
                    onTap:(){
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(



                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: selectedindex == index?HexColor("#6150F2"): Colors.white,
                        ),
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(data[index].image,height: 25,color: selectedindex == index?Colors.white:HexColor("#6150F2"),),
                            SizedBox(height: 5,),
                            Expanded(child: Text(data[index].title,style: TextStyle(color: selectedindex == index?Colors.white: ColorConstants.black,fontSize: 10,fontWeight: FontWeight.normal),))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

              CustomTextField(
                helperTxt: "User Amount",
              ),
              SizedBox(height: 20,),
              CustomTextField(
                helperTxt: "Job Description",
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,

                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context,indxex){
                    return  InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = indxex;


                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 30),
                        child: Row(
                          children: [
                             selectedIndex == indxex?Image.asset(AppImages.chckBox,height: 20,):Image.asset(AppImages.blanckChckBox,height: 20,),
                            SizedBox(width: 5,),
                            Text(
                              txt[indxex],
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              selectedIndex == 1?Row(
                children: [
                  InkWell(
                    onTap: (){
                      selectDate(context);
                    },
                    child: Container(
                      height: 50,
                        width: 160,
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            border: Border.all(color: HexColor("#737373").withOpacity(0.5),width: 1)
                        ),
                        child:Row(
                          children: [
                            Text(formattedDate==null?"Date":formattedDate,style: TextStyle(color: HexColor("#737373"),fontWeight: FontWeight.normal,fontSize: 15),),
                            Spacer(),
                            Image.asset(AppImages.calendarImg,height: 20,)
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        _selectTime(context);
                      },
                      child: Container(
                          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                          margin: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              border: Border.all(color: HexColor("#737373").withOpacity(0.5),width: 1)
                          ),
                          child:Row(
                            children: [
                              Text(formattedTime == null?"Time":formattedTime,style: TextStyle(color: HexColor("#737373"),fontWeight: FontWeight.normal,fontSize: 15),),
                              Spacer(),
                              Image.asset(AppImages.clockImg,height: 20,)
                            ],
                          )
                      ),
                    ),
                  ),
                ],
              ):SizedBox(),
              SizedBox(height: 20,),
        CustomButton(bttnText: "Post Job",ontap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) =>
                            InCountryJobs()
                    )
                );
              },),

            ],
          ),
        ),
      ),
    );
  }
  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);

      });
  }
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked_s = await showTimePicker(
        context: context,
        initialTime: selectedTime, builder: (BuildContext context, Widget child) {
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child,
      );});

    if (picked_s != null && picked_s != selectedTime )
      setState(() {
        selectedTime = picked_s;
         formattedTime = formatTimeOfDay(selectedTime);
        print("time $formattedTime");

      });
  }

  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm();  //"6:00 AM"
    return format.format(dt);
  }

}

class Data{
  String image;
  String title;
  Data({this.image,this.title});
}
