import 'package:flutter/material.dart';
import 'package:flutter_project_4/providers/myprovider.dart';
import 'package:flutter_project_4/ui/pages/splach_page.dart';
import 'data/db_helper.dart';
import 'data/sp_helper.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DbHelper.dbHelper.initDatabase();
  SpHelper.spHelper.initSharedPrefrences();
  runApp(ChangeNotifierProvider<HomeProvider>(
    create: (context) => HomeProvider(),
    child: MaterialApp(
      home: SplachPage(),
    ),
  ));
}


