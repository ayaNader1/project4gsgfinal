import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/category-page.dart';
import 'package:flutter_project_4/ui/pages/featured-for-you.dart';
import 'package:flutter_project_4/ui/pages/profile-page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'home-page.dart';


class MyHomePage extends StatefulWidget {
  // int index = 0;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(builder: (context,provider,x)=>Scaffold(
      extendBody: true,
      // backgroundColor: Colors.redAccent,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Color(0xffBFBFBF), spreadRadius: 0, blurRadius: 1),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Color(0xffBFBFBF),
            // selectedItemColor: Colors.amber[800],
            // currentIndex: widget.index,
            currentIndex: provider.index,
            onTap: (int index) {
              provider.AnimateToTab(index);
              // setState(() {
              //   this.widget.index = index;
              // }
              // );
              // // _navigateToScreens(index);
            },
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                // icon: Icon(Icons.home_outlined),
                icon: SvgPicture.asset('assests/icons/Path.svg',color:provider.index==0? Color(0xff00CBFF):Color(0xffBFBFBF),),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                // icon: Icon(Icons.category_outlined),
                icon: SvgPicture.asset('assests/icons/Combined Shape.svg',color:provider.index==1? Color(0xff00CBFF):Color(0xffBFBFBF)),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                // icon: Icon(Icons.star_border_outlined),
                icon: SvgPicture.asset('assests/icons/PathStar.svg',color:provider.index==2? Color(0xff00CBFF):Color(0xffBFBFBF)),
                label: '',
              ),
              BottomNavigationBarItem(
                // icon: Icon(Icons.person_outline),
                icon: SvgPicture.asset('assests/icons/user.svg',color:provider.index==3? Color(0xff00CBFF):Color(0xffBFBFBF)),
                label: '',
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: provider.index == 0 ? HomePage(): provider.index == 1 ? CategoryPage() : provider.index==2 ? StarPage() : ProfilePage()
      ),
    )
    );
  }
}