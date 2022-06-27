import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Karishma Sirsat'),
              accountEmail: Text('karishma.uplyft@gmail.com')),
          // DrawerHeader(
          //   child: Text('My First drawer'),
          //   decoration: BoxDecoration(color: Colors.blue),
          // ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Anagha Bagul'),
            subtitle: Text('Android Developer'),
            trailing: Icon(Icons.contact_mail_rounded),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Manish Talreja'),
            subtitle: Text('Flutter Developer'),
            trailing: Icon(Icons.contact_phone),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
