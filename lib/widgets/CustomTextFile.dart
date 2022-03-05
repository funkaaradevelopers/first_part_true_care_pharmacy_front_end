import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/globals.dart';

class WidgetHelper extends StatefulWidget {
  @override
  _WidgetHelperState createState() => _WidgetHelperState();

  CustomTextField(String labelText,String? prefixText,String? errorText,String hintText,TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding:EdgeInsets.all(8) ,child: Text(labelText,style: GoogleFonts.roboto(
          textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w600),
        )),),
        Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                cursorColor: customTextColor,
                controller: controller,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w600),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  prefixStyle: GoogleFonts.roboto(
                    textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w600),
                  ),
                  errorText: errorText,
                  prefixIcon: prefixText!=null?Padding(padding: EdgeInsets.all(10), child: Text('$prefixText',style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: customTextColor, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w600),
                  ),)):null,
                  hintText: hintText,
                  hintStyle: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.grey, letterSpacing: .5,fontSize: 18,fontWeight: FontWeight.w400),
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 6.0, top: 8.0),
                  /*focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),*/
                ),
              ),
            ),
            height: 64,
            decoration: BoxDecoration(
              borderRadius : BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow : [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(0,3),
                  blurRadius: 100
              )],
              color : Color.fromRGBO(255, 255, 255, 1),
            )
        )
      ],
    );
  }
}

class _WidgetHelperState extends State<WidgetHelper> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }


}
