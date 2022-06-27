import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: GestureDetector(
        child: Text('go to previous page'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
