import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:steward_mobile/login.dart';
import 'package:steward_mobile/dashboard1.dart';
import 'package:steward_mobile/dashboard2.dart';
import 'package:steward_mobile/about.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await SystemChrome.setPreferredOrientations([
    //DeviceOrientation.portraitUp,
    //DeviceOrientation.portraitDown,
  //]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          //primarySwatch: Colors.indigo,
          primaryColor: Colors.indigo,
        ),
        home: LoginPage(),
        //home: Dashboard1(),
      );
}