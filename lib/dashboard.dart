import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:alert/alert.dart';

class Dashboard extends StatelessWidget {
  void _handleLogout(BuildContext context) async {
    print("Back to Login was pressed!");
    Alert(message: "Button pressed!").show();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

@override
Widget build(BuildContext context) {
    final avatar = Padding(
      padding: const EdgeInsets.all(20),
      child: Hero(
          tag: 'logo',
          child: SizedBox(
            height: 160,
            child: Image.asset('assets/logo-farbig.png'),
          )
      ),
    );
    final description = Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: const TextSpan(
            text: 'Anim ad ex officia nulla anim ipsum ut elit minim id non ad enim aute. Amet enim adipisicing excepteur ea fugiat excepteur enim veniam veniam do quis magna. Cupidatat quis exercitation ut ipsum dolor ipsum. Qui commodo nostrud magna consectetur. Nostrud culpa laboris Lorem aliqua non ut veniam culpa deserunt laborum occaecat officia.',
            style: TextStyle(color: Colors.black, fontSize: 20)
        ),
      ),
    );
    final buttonLogout2 = FlatButton(
        child: const Text('Logout and Login again', style: TextStyle(color: Colors.black87, fontSize: 16),),
        onPressed: () {
          print("Back to Login was pressed!");
          Alert(message: "Button pressed!").show();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
        }
    );
    final buttonLogout = Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
          child: const Text('Logout', style: TextStyle(color: Colors.white, fontSize: 20)),
          //color: Colors.black87,
          onPressed: () { _handleLogout(context); },
        ),
      ),
    );
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: <Widget>[
                avatar,
                description,
                buttonLogout,
              ],
            ),
          ),
        )
    );
  }
}