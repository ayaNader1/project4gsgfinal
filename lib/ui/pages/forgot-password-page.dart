import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/sign-up-page.dart';
import 'package:flutter_project_4/ui/widgets/custom-TF-form.dart';
import 'package:flutter_project_4/ui/widgets/custom-btn.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class ForgotPasswordPage extends StatelessWidget {
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
                    height: MediaQuery.of(context).size.height / 2,
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
                          'Forgot Password?',
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
                                'Please enter your email address. You will receive a link to create a new password via email.',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
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
                              CustomButton(
                                  'SEND NEW PASSWORD'),
                            ],
                          ),
                        ),

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
