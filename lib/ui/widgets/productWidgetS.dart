import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/models/product_response.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidgetS extends StatelessWidget {
  ProductResponse productResponse;
  ProductWidgetS({this.productResponse});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            height: 170,
            // width: 144,
            child: CachedNetworkImage(
              imageUrl: productResponse.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                width: 200,
                child: Text(productResponse.title,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 14,),
                    ))),
            SizedBox(
              height: 10,
            ),
            Text('\$' + productResponse.price.toString(),
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ],
    );
    ;
  }
}
