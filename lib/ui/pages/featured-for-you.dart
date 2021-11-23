import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/widgets/productWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class StarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(builder: (context,provider,x)=>Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 80,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Featured For You',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2),
                  )),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 6/10,
              ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: provider.productF.length,
                itemBuilder: (context,index){
                  return ProductWidgetFeatured(provider.productF[index]);
                },
              )
            ],
          ),
        )
      ),
    )
    );
  }

}