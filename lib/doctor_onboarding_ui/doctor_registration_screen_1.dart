import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:true_care_pharmacy/helper/globals.dart';
import 'package:true_care_pharmacy/widgets/CustomTextFile.dart';

import '../widgets/CustomMultiSelectDropDown.dart';

class DoctorRegistrationScreenOne extends StatefulWidget {
  @override
  _DoctorRegistrationScreenOneState createState() => _DoctorRegistrationScreenOneState();
}

class _DoctorRegistrationScreenOneState extends State<DoctorRegistrationScreenOne> {
  TextEditingController drNameTextEditingController = TextEditingController();
  TextEditingController specialityTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController = TextEditingController();
  TextEditingController emailAddressTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleTextCustom("Welcome","Doctor"),
              SizedBox(height: 20,),
              WidgetHelper().CustomTextField("Your Name","Dr. ",null,"Your Good Name",specialityTextEditingController),
              SizedBox(height: 10,),
              Padding(padding:EdgeInsets.all(8) ,child: Text("Your Speciality",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w600),
              )),),
              CustomMultiselectDropDown(listOFStrings: ["Psychologist","Sexologist","Gynocologist"],selectedList: (listOfStrings){},),
              SizedBox(height: 10,),
              WidgetHelper().CustomTextField("Mobile Number","+91 | ",null,"Your Mobile Number",phoneNumberTextEditingController),
              SizedBox(height: 10,),
              WidgetHelper().CustomTextField("Email Address",null,null,"somemail@email.com",emailAddressTextEditingController),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: size.height*0.08,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: primaryColorOfApp
                      ),
                      onPressed: () {

                      },
                      child: Text('Proceed',style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5,fontSize: 24,fontWeight: FontWeight.w600),
                      ),)),
                ),
              ),
              SizedBox(height: 10,),
              Center(child: Text(
                'or',
                style: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 20,fontWeight: FontWeight.w600),
              ),),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                height: size.height*0.08,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: primaryColorOfApp
                      ),
                      onPressed: () {

                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Continue with Google',style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w600),
                            ),),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: secondaryColorOfApp,
                              child: IconButton(
                                  onPressed: null,
                                  icon: Icon(FontAwesomeIcons.google,size: 24,color: Colors.white,)),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        )
      )
    ));
  }

  TitleTextCustom(String first,String last) {
    return RichText(
      text: TextSpan(
          text: first,
          style:GoogleFonts.roboto(
            textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 42),
          ),
          children: <TextSpan>[
            TextSpan(text: ' ,\n$last',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 42,fontWeight: FontWeight.w700),
                ))
          ]
      ),
    );
  }
}

