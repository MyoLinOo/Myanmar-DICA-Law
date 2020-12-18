import 'package:flutter/material.dart';
import 'package:myanmar_book/db/Book.dart';
import 'package:myanmar_book/detail_screen.dart';
import 'package:myanmar_book/main_drawer.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

void main() async {
// Avoid errors caused by flutter upgrade.
// Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
// Open the database and store the reference.
  final Future<Database> database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'doggie_database.db'),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Book> mmList = [];
  List<Book> enList = [];

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
              ontap: () async {
                List<Book> list = await _databaseHelper.getAllTest();
                setState(() {
                  for (var l in list) {
                    if (l.type == "m") {
                      mmList.add(l);
                    }
                  }

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailListScreen(
                              name: "ျမန္မာ", bookList: mmList)));
                });
              },
            ),
            FlagItem(
              image: "images/img_english_flag.png",
              name: "English",
              ontap: () async {
                List<Book> list = await _databaseHelper.getAllTest();

                setState(() {
                  for (var l in list) {
                    if (l.type == "e") {
                      enList.add(l);
                    }
                  }
                  // bookList = list;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailListScreen(
                              name: "English", bookList: enList)));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FlagItem extends StatefulWidget {
  final String name;
  final String image;
  final Function ontap;

  const FlagItem({this.name, this.image, this.ontap});

  @override
  _FlagItemState createState() => _FlagItemState();
}

class _FlagItemState extends State<FlagItem> {
  List<Book> bookList = [];
  Book currentbook;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "${widget.name}",
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
              image: AssetImage("${widget.image}"),
            ),
          ),
        ],
      ),
    );
  }
}
