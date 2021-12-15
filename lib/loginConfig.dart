//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:alert/alert.dart';

class LoginConfigPage extends StatefulWidget {
  @override
  _LoginConfigPageState createState() => _LoginConfigPageState();
}

class _LoginConfigPageState extends State<LoginConfigPage> {
  @override
  Widget build(BuildContext context) {
    const backendUrl = Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: TextField(
        keyboardType: TextInputType.url,
        decoration: InputDecoration(
          labelText: 'Backend URL',
        ),
      ),
    );
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Steward Konfiguration'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            body: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bg.jpeg'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(minWidth: 200, maxWidth: 400),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only( top: 110, left: 20, right: 20, bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: backendUrl,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }
}
