import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steward_mobile/drawer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.indigo,
        title: Text('About'),
        //leading: MenuPage(),
      //leading: MenuWidget(),
    ),
    drawer: StewardDrawer(context),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.info_outline, size: 100),
          const SizedBox(height: 12),
          Text(
            'About',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    ),
  );
}