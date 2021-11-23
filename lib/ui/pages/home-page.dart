import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/models/product_response.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/product-details.dart';
import 'package:flutter_project_4/ui/widgets/CatWidget.dart';
import 'package:flutter_project_4/ui/widgets/productWidget.dart';
import 'package:flutter_project_4/ui/widgets/productWidgetS.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:search_page/search_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(
        builder: (context, provider, x) => Scaffold(
              body: Container(
                margin: EdgeInsets.only(top: 100, right: 20, left: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      provider.allProducts == null
                          ? Center(child: CircularProgressIndicator())
                          : TextField(
                              showCursor: false,
                              onTap: () => showSearch(
                                context: context,
                                delegate: SearchPage<ProductResponse>(
                                    onQueryUpdate: (s) => print(s),
                                    items: provider.allProducts,
                                    searchLabel: 'Search Product',
                                    suggestion: Center(
                                      child: Text(
                                          'Filter Products by Product name'),
                                    ),
                                    failure: Center(
                                      child: Text('No Product found :('),
                                    ),
                                    filter: (product) => [
                                          product.title,
                                          product.category,
                                        ],
                                    builder: (prod) => GestureDetector(
                                          onTap: () {
                                            provider
                                                .getSpecificProduct(prod.id);
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                              return ProductDetails();
                                            }));
                                          },
                                          child: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 80, vertical: 20),
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                // border: Border.all(color: Color(0xff6DCEE7))
                                              ),
                                              child: ProductWidgetS(
                                                productResponse: prod,
                                              )),
                                        )
                                    // builder: (prod) => Text(prod.title)
                                    ),
                              ),
                              cursorColor: Color(0xff626569),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff6DCEE7)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff6DCEE7)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                hintText: 'Search',
                                suffixIcon: Container(
                                  width: 24,
                                  height: 24,
                                  padding: EdgeInsets.all(10),
                                  child: SvgPicture.asset(
                                    'assests/icons/Group 8 Copy.svg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Collections',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: provider.collectios.map((e) {
                            return Container(
                                width: 214,
                                height: 137,
                                margin: EdgeInsets.only(right: 16),
                                child: GestureDetector(
                                    onTap: () {
                                      provider.AnimateToTab(1);
                                    },
                                    child: CatWidget(
                                      collection: e,
                                    )));
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Featured Products',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2),
                              )),
                          Container(
                            width: 85,
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(color: Color(0xff6ECDE8)),
                            ),
                            child: TextButton(
                              child: Text('More',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Color(0xff6ECDE8),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )),
                              onPressed: () {
                                provider.AnimateToTab(2);
                              },
                            ),
                          ),
                        ],
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 6 / 10,
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: provider.productF.length,
                        itemBuilder: (context, index) {
                          return ProductWidgetFeatured(
                              provider.productF[index]);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
