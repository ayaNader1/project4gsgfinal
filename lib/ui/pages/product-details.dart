import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    DateTime newDate = DateTime(now.year, now.month, now.day + 15);
    print(newDate);
    String formattedDate = DateFormat('dd MMMM').format(newDate);
    print(formattedDate);

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff6DCEE7), //change your color here
        ),
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, x) {
          return provider.selectedProduct == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        alignment: Alignment.topCenter,
                        // color: Colors.blue,
                        height: MediaQuery.of(context).size.height-100,
                        child: CachedNetworkImage(
                            imageUrl: provider.selectedProduct.image),
                      ),
                      Positioned.fill(
                          bottom: MediaQuery.of(context).size.height / 7 - 40,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: MediaQuery.of(context).size.height / 3.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffEEEEEE)),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child:
                                                Text(provider.selectedProduct.title,
                                                    style: GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w500,
                                                        letterSpacing: 2,
                                                      ),
                                                    )),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: IconButton(
                                              onPressed: () {
                                                print(provider.selectedProduct);
                                                provider.addToFavourite(
                                                    provider.selectedProduct);
                                              },
                                              icon: Icon(
                                                provider
                                                    .favouriteProducts
                                                    ?.any((element) =>
                                                element
                                                    .id ==
                                                    provider
                                                        .selectedProduct
                                                        .id) ??
                                                    false ? Icons.favorite:Icons.favorite_border,
                                                color: Color(0xffC84040),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      RatingStars(
                                        value:provider.selectedProduct.rating.rate.toDouble() ,
                                        starBuilder: (index, color) => Icon(
                                          Icons.star,
                                          color: color,
                                        ),
                                        starCount: 5,
                                        starSize: 20,
                                        valueLabelColor: const Color(0xffffffff),
                                        valueLabelTextStyle: GoogleFonts.montserrat(textStyle:TextStyle(
                                            color: Color(0xff161616),
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14.0),),
                                        maxValueVisibility: false,
                                        valueLabelRadius: 10,
                                        starSpacing: 2,
                                        animationDuration:
                                            Duration(milliseconds: 1000),
                                        valueLabelMargin:
                                            const EdgeInsets.only(right: 2),
                                        valueLabelPadding: EdgeInsets.all(2),
                                        starOffColor: const Color(0xff757575),
                                        starColor: Color(0xffF9A825),
                                      ),
                                    ],
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(bottom: 35),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Estimated Delivery:',style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),),
                                        Text(' '+formattedDate,
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 7,
                                child: Container(
                                    alignment: Alignment.topCenter,
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                        color: Color(0xff00CBFF)),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Total',style: GoogleFonts.montserrat(textStyle:TextStyle(
                                                fontSize: 14,
                                                color: Colors.white.withOpacity(0.5),
                                                fontWeight: FontWeight.w500), ),),
                                            Text('\$'+provider.selectedProduct.price.toString(),style: GoogleFonts.montserrat(textStyle:TextStyle(
                                                fontSize: 28.5,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500), ),),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            provider
                                                .addToCart(provider.selectedProduct);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 133,
                                            height: 36,
                                            margin: EdgeInsets.only(top: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              border: Border.all(color: Colors.white,width: 1)
                                            ),
                                            child: Text(
                                              'ADD TO BAG'.toUpperCase(),
                                              style: GoogleFonts.montserrat(textStyle:TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500), )
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ))),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
