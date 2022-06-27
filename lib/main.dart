import 'package:demo_app/albumBO.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/drawer.dart';

import 'package:http/http.dart' as http;
import 'dart:convert'; //parse json

import 'my_card.dart';

void main() {
  runApp(MaterialApp(
    home: MyFirstDemoApp(),
  ));
}

class MyFirstDemoApp extends StatefulWidget {
  const MyFirstDemoApp({Key? key}) : super(key: key);

  @override
  State<MyFirstDemoApp> createState() => _MyFirstDemoAppState();
}

class _MyFirstDemoAppState extends State<MyFirstDemoApp> {

//  String url = "https://jsonplaceholder.typicode.com/photos";
  var jsonData;

  void initState() {
    super.initState();
    fetchData();
  }

   fetchData() async {
    try{
  var data = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    jsonData = jsonDecode(data.body);
    print(jsonData);
    setState(() {}); //to update ui
    }
    catch (e){
      print('error');
    }
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jsonData[index]["title"]),
          );
        },
        itemCount: jsonData.length,
        //itemCount: jsonData == null ? 0 : jsonData.length,
      ),
      drawer: MyDrawer(),
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(15),
      //     child: MyCard(),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}




        // child: Container(
        //   width: 300,
        //   color: Colors.teal,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //     Container(
        //     color: Colors.purple,
        //     width: 100,
        //     height: 100,
        //     child: Text(
        //       "First Box",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.red,
        //     width: 100,
        //     height: 100,
        //     child: Text(
        //       "Second Box",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.yellow,
        //     width: 100,
        //     height: 100,
        //     child: Text(
        //       "Third Box",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        //   ],),
        // )