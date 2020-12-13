import 'package:flutter/material.dart';
import 'package:myanmar_book/detail_screen.dart';
import 'package:myanmar_book/main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MainDrawer(),
      appBar: AppBar(
        title: Text("DICA Law"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlagItem(
              image: "images/img_myanmar_flag.png",
              name: "ျမန္မာ",
            ),
            FlagItem(
              image: "images/img_english_flag.png",
              name: "English",
            ),
          ],
        ),
      ),
    );
  }
}

class FlagItem extends StatelessWidget {
  final String name;
  final String image;

  const FlagItem({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailListScreen(
                      name: name,
                    )));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "$name",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Laws,regulations and procedures for investment and company registration.",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Image(
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              image: AssetImage("$image"),
            ),
          ),
        ],
      ),
    );
  }
}
