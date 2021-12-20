import 'package:flutter/material.dart';
import 'package:steward_mobile/dashboard1.dart';
import 'package:steward_mobile/dashboard2.dart';
import 'package:steward_mobile/about.dart';
import 'package:steward_mobile/login.dart';

Drawer StewardDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/default-avatar.gif')
          ),
          accountEmail: Text('fozzie.bear@muppets.org'),
          accountName: Text(
            'Fozzie Bear',
            style: TextStyle(fontSize: 24.0),
          ),
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.analytics_outlined),
          title: const Text(
            'Dashboard 1',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => Dashboard1(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.bar_chart),
          title: const Text(
            'Dashboard 2',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => Dashboard2(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.document_scanner_outlined),
          title: const Text(
            'Verträge',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => Dashboard2(),
              ),
            );
          },
        ),
        const Divider(
          height: 10,
          thickness: 1,
        ),
        ListTile(
          leading: const Icon(Icons.info_outlined),
          title: const Text(
            'About',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => About(),
              ),
            );
          },
        ),
        const Divider(
          height: 10,
          thickness: 1,
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text(
            'Logout',
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => LoginPage(),
              ),
            );
          },
        ),
      ],
    ),
  );
}