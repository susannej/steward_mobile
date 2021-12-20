import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steward_mobile/drawer.dart';

class Dashboard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Dashboard2'),
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
                'Dashboard2',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      );
}
