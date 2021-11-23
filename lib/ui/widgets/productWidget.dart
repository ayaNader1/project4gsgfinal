import 'package:flutter/cupertino.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidgetFeatured extends StatelessWidget{
  Product product;
  ProductWidgetFeatured(this.product);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(product.img),
          ),
        ),
        SizedBox(height: 10,),
        Text(product.title,style:GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 14,letterSpacing: 2),) ),
        SizedBox(height: 10,),
        Text(' ' + product.price,style:GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 20,letterSpacing: 2,fontWeight: FontWeight.w500), ))
      ],

    );
  }

}