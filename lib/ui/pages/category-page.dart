import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/widgets/CatWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'category-products.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(
        builder: (context, provider, x) => Scaffold(
              // body: provider.filteredList == null ? CircularProgressIndicator():
              // ListView.builder(
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: provider.filteredList.length,
              //     itemBuilder: (context, index) {
              //       // provider.getCategoryProducts(provider.allCategories[index]);
              //       return GestureDetector(
              //         onTap: (){
              //           provider.getSpecificProduct(provider.filteredList[index].id);
              //           provider.getCategoryProducts(provider.filteredList[index].category);
              //           Navigator.of(context).push(
              //               MaterialPageRoute(builder: (context) {
              //                 return CategoryProducts();
              //               }));
              //         },
              //         child: Container(
              //             margin: EdgeInsets.only(bottom: 10),
              //             child: CatWidgetTab(
              //               img: provider.filteredList[index].image,
              //               title: provider.filteredList[index].category,
              //             )
              //         ),
              //       );
              //     }),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Category',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 2),
                          )),
                    ),
                    provider.allCategories == null
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: provider.allCategories.length,
                            itemBuilder: (context, index) {
                              // provider.getCategoryProducts(provider.allCategories[index]);
                              return GestureDetector(
                                onTap: () {
                                  provider.getCategoryProducts(provider.allCategories[index]);
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return CategoryProducts();
                                  }));
                                },
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: CatWidgetTab(
                                      // img: provider.categoryProducts[index].image,
                                      title:
                                          provider.allCategories[index],
                                    )),
                              );
                            })
                  ],
                ),
              ),
            ));
  }
}
