import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidgetCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 327,
      height: 92,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffEEEEEE)),
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(16),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assests/icons/Background.jpg',
                    fit: BoxFit.cover,
                  ))),
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Calf-length Wrap Dress',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Delivery: ',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                    Text(
                      '8-10 Nov.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 10,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 50,
            alignment: Alignment.topCenter,
            child: Text('39,99\$',style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 10,
                  letterSpacing: 1
              ),
            ),),
          )
        ],
      ),
    );
  }
}
