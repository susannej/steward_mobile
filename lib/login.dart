//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'loginConfig.dart';
import 'dashboard1.dart';
import 'package:alert/alert.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    const logo = Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Image(
        image: AssetImage('assets/logo-white.png'),
        //width: 100,
      ),
    );
    const titleString = Padding(
      padding: EdgeInsets.only(bottom: 60),
      child: Text(
        'Steward Mobile',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 24),
      )
    );
    const inputEmail = Padding(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
      child: TextField(
        keyboardType: TextInputType.name,
        //style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          //enabledBorder: OutlineInputBorder(
            //borderSide: BorderSide(color: Colors.white, width: 2.0)
          //),
          //focusedBorder: OutlineInputBorder(
              //borderSide: BorderSide(color: Colors.white, width: 2.0)
          //),
          labelText: 'Benutzername',
          //labelStyle: TextStyle(color: Colors.white),
          /*
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0)
            )
           */
        ),
      ),
    );
    const inputPassword = Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        //style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          //hintStyle: TextStyle(color: Colors.white),
          //enabledBorder: OutlineInputBorder(
            //borderSide: BorderSide(color: Colors.white, width: 2.0)
          //),
          //focusedBorder: OutlineInputBorder(
            //borderSide: BorderSide(color: Colors.white, width: 2.0)
          //),
          labelText: 'Passwort',
          //labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
    final buttonLogin = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: ButtonTheme(
        height: 70,
        child: ElevatedButton(
          child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          //color: Colors.black87,
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard1()));
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
    );
    final buttonConfiguration = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ButtonTheme(
        height: 70,
        child:  OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 2.0, color: Colors.blue),
          ),
          child: const Text('Konfiguration...', style: TextStyle(/*color: Colors.white,*/ fontSize: 20),),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginConfigPage()));
          }
        )
      )
    );
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpeg'),
            fit: BoxFit.cover
          )
        ),
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Container(
                constraints: BoxConstraints(minWidth: 200, maxWidth: 400),

                child: Column(
                  children: <Widget>[
                    logo,
                    titleString,
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        children: <Widget>[
                          inputEmail,
                          inputPassword,
                          SizedBox(
                            width: double.infinity,
                            child: buttonLogin,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: buttonConfiguration,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              /*
              Expanded(
                child: Column(
                children: <Widget>[
                  logo,
                  titleString,
                ],
              ),
              ),
              Expanded(
                child: Container(
                  constraints: BoxConstraints(minWidth: 200, maxWidth: 400),

                child: Column(
                children: <Widget>[
                  inputEmail,
                  inputPassword,
                  SizedBox(
                    width: double.infinity,
                    child: buttonLogin,
                  ),
                  SizedBox(
                    width: double.infinity,
                      child: buttonConfiguration,
                  )
                ],
              ),
                ),
              ),
              */
            ],
          )
      )
    );
    /*
    return Scaffold(
      body: Container(
        //constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpeg'),
            fit: BoxFit.cover
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Opacity(
              opacity: 1.0,
              child: ListView(
              //child: Stack(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/logo-white.png'),
                    //width: 100,
                  ),
                  //logo,
                  titleString,
                  inputEmail,
                  inputPassword,
                  buttonLogin,
                  buttonConfiguration
                ],
              ),
            ),
          )
        )
      )
    );
     */
  }
}