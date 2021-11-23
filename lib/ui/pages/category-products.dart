import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/product-details.dart';
import 'package:flutter_project_4/ui/widgets/productWidgetS.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(
        builder: (context, provider, x) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Color(0xff6DCEE7), //change your color here
                ),
              ),
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      provider.selectedCategory == null
                          ? Container()
                          : Text(
                              provider.selectedCategory[0]
                                      .toUpperCase() +
                                  provider.selectedCategory
                                      .substring(1),
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2)),
                            ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: provider.categoryProducts == null
                            ? CircularProgressIndicator()
                            : GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 38,
                                        childAspectRatio: 6 / 10,
                                        mainAxisSpacing: 24),
                                itemCount: provider.categoryProducts.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // provider.getCategoryProducts(e);
                                      provider.getSpecificProduct(
                                          provider.categoryProducts[index].id);
                                      print(
                                          provider.categoryProducts[index].id);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return ProductDetails();
                                      }));
                                    },
                                    child: Container(
                                      // padding: EdgeInsets.all(10),
                                      // child: Column(
                                      //   children: [
                                      //     Expanded(
                                      //       flex: 2,
                                      //       child: CachedNetworkImage(
                                      //         imageUrl: provider
                                      //             .categoryProducts[index].image,
                                      //       ),
                                      //     ),
                                      //     Column(
                                      //       crossAxisAlignment:
                                      //           CrossAxisAlignment.start,
                                      //       children: [
                                      //         Text(provider
                                      //             .categoryProducts[index].title),
                                      //         Row(
                                      //           children: [
                                      //             Text('Price: ' +
                                      //                 provider
                                      //                     .categoryProducts[index]
                                      //                     .price
                                      //                     .toString() +
                                      //                 '\$'),
                                      //             Spacer(),
                                      //             IconButton(
                                      //                 onPressed: () {
                                      //                   provider.addToFavourite(
                                      //                       provider.categoryProducts[
                                      //                           index]);
                                      //                 },
                                      //                 icon: Icon(
                                      //                   Icons.favorite,
                                      //                   color: provider
                                      //                               .favouriteProducts
                                      //                               ?.any((element) =>
                                      //                                   element
                                      //                                       .id ==
                                      //                                   provider
                                      //                                       .categoryProducts[
                                      //                                           index]
                                      //                                       .id) ??
                                      //                           false
                                      //                       ? Colors.red
                                      //                       : Colors.black,
                                      //                 ))
                                      //           ],
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ],
                                      // ),
                                      child: ProductWidgetS(
                                        productResponse:
                                            provider.categoryProducts[index],
                                      ),
                                    ),
                                  );
                                }),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
