import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/sign-up-page.dart';
import 'package:flutter_project_4/ui/widgets/custom-TF-form.dart';
import 'package:flutter_project_4/ui/widgets/custom-btn.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'forgot-password-page.dart';


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(
        builder: (context, provider, x) => Scaffold(
              body: Stack(children: [
                Image.asset('assests/icons/Background.png'),
                Positioned.fill(
                    top: 120,
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
                    height: MediaQuery.of(context).size.height / 1.5,
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
                        Text(
                          'Sign In',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              CustomTextfield(
                                  'Email', provider.emailController),
                              Text(
                                'Password',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              CustomTextfield(
                                  'Password', provider.passwordController),
                              GestureDetector(
                                onTap: () {
                                  // RouteHelper.routeHelper.goToPage(ResetPasswordPage.routeName);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgotPasswordPage()),
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Forgot your password?',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomButton(
                                  'Login'),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('Login with Social',style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: 55,
                              height: 55,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Color(0xffD1D1D1),
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                              child: SvgPicture.asset('assests/icons/Google G.svg'),
                            ),
                          ),
                          SizedBox(width: 25,),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: 55,
                              height: 55,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Color(0xffD1D1D1),
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                              child: SvgPicture.asset('assests/icons/iconfinder_facebook_317746.svg'),
                            ),
                          ),
                            SizedBox(width: 25,),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: 55,
                              height: 55,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Color(0xffD1D1D1),
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                              child: SvgPicture.asset('assests/icons/iconfinder_16-apple_104490.svg'),
                            ),
                          ),
                        ],),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don’t have an account?',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),),
                              Text(' Sign Up',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
              ]),
            ));
  }
}
