import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:google_fonts/google_fonts.dart';

class CatWidget extends StatelessWidget {
  Collection collection;
  CatWidget({this.collection});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Stack(
        children: [
          Image.asset(
            collection.img,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assests/icons/Rectangle.png',
              fit: BoxFit.cover,
            ),
          )),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 15, left: 20),
              child: Text(
                collection.title.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class CatWidgetTab extends StatelessWidget {
  String title;
  CatWidgetTab({this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              alignment: Alignment.center,
              height: 137,
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)
              ),
              // child: CachedNetworkImage(
              //   imageUrl: "https://img.freepik.com/free-photo/white-template-product-stage-present-background_169963-50.jpg?size=626&ext=jpg&ga=GA1.2.358294974.1605052800",
              //   fit: BoxFit.cover,
              // ),
              child: Container(
                color: Colors.blue.withOpacity(.5),
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    width: 327,
                    height: 137,
                    child: Image.asset(
                      'assests/icons/Rectangle.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  // margin: EdgeInsets.only(bottom: 15, left: 50),
                  child: Text(
                    title.toUpperCase(),
                    style: GoogleFonts.montserrat(textStyle:TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1), )
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
