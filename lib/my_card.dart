import 'package:demo_app/page_one.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        Text('The Flutter App'),
        SizedBox(
          height: 10,
        ),
        Image.asset("assets/flutter_logo.png"),
        SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => const PageOne() )));
            },
            child: Text('go to page one'))
      ]),
    );
  }
}
