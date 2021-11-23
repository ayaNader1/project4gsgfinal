import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/setting-page.dart';
import 'package:flutter_project_4/ui/pages/sign-in-page.dart';
import 'package:flutter_project_4/ui/pages/wish-list-page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'cart-page.dart';


class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<HomeProvider>(
        builder: (context, provider, x) {
          return SingleChildScrollView(
            child: Stack(children: [
              Image.asset('assests/icons/Background.png'),
              Positioned.fill(
                  top: 70,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        width: 103,
                        height: 106,
                        child: SvgPicture.asset('assests/icons/Logo.svg')),
                  )),
              Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      height: MediaQuery.of(context).size.height / 1.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffEEEEEE)),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 300,
                              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffEEEEEE)),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text('My Cart',
                                style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                                ),
                              ),),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WishListPage()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 300,
                              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffEEEEEE)),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text('My Wish List',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                                ),),
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: (){
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => ShippingAddressPage()),
                          //     );
                          //   },
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     width: 300,
                          //     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          //     padding: EdgeInsets.all(15),
                          //     decoration: BoxDecoration(
                          //       border: Border.all(color: Color(0xffEEEEEE)),
                          //       borderRadius: BorderRadius.circular(6),
                          //     ),
                          //     child: Text('Shipping Address',
                          //       style: GoogleFonts.montserrat(
                          //         textStyle: TextStyle(
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.w500,
                          //           letterSpacing: 2,
                          //         ),
                          //       ),),
                          //   ),
                          // ),
                          // GestureDetector(
                          //   onTap: (){
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => LangPage()),
                          //     );
                          //   },
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     width: 300,
                          //     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          //     padding: EdgeInsets.all(15),
                          //     decoration: BoxDecoration(
                          //       border: Border.all(color: Color(0xffEEEEEE)),
                          //       borderRadius: BorderRadius.circular(6),
                          //     ),
                          //     child: Text('Language',
                          //       style: GoogleFonts.montserrat(
                          //         textStyle: TextStyle(
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.w500,
                          //           letterSpacing: 2,
                          //         ),
                          //       ),),
                          //   ),
                          // ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SettingPage()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 300,
                              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffEEEEEE)),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text('Setting',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                                ),),
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: (){
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => FaqPage()),
                          //     );
                          //   },
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     width: 300,
                          //     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          //     padding: EdgeInsets.all(15),
                          //     decoration: BoxDecoration(
                          //       border: Border.all(color: Color(0xffEEEEEE)),
                          //       borderRadius: BorderRadius.circular(6),
                          //     ),
                          //     child: Text('FAQ',
                          //       style: GoogleFonts.montserrat(
                          //         textStyle: TextStyle(
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.w500,
                          //           letterSpacing: 2,
                          //         ),
                          //       ),),
                          //   ),
                          // ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 300,
                              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffEEEEEE)),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text('Sign Out',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                                ),),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )),
            ]),
          );
        },
      ),
    );
  }

}