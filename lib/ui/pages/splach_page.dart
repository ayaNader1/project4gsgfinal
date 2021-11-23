import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/sign-in-page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class SplachPage extends StatefulWidget{
  @override
  _SplachPageState createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeProvider>(context,listen: false).getAllCategories();
    Provider.of<HomeProvider>(context,listen: false).getAllProducts();
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return SignInPage();
      }));
    });

    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assests/icons/Background.jpg'),
          Positioned.fill(child: Align(alignment: Alignment.center,
          child: SvgPicture.asset('assests/icons/Logo.svg'),
          ))
        ]
      ),
    );
  }
}