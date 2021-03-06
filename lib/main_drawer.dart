import 'package:flutter/material.dart';
import 'package:myanmar_book/db/Book.dart';
import 'package:myanmar_book/detail_screen.dart';
import 'package:myanmar_book/main.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Book> mmList = [];
  List<Book> enList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.green,
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Text(
                        "DICA Law",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/img_drawercover.jpg"))),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/img_logo_dica.png"))),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  leading: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    List<Book> list = await _databaseHelper.getAllTest();
                    setState(() {
                      for (var l in list) {
                        if (l.type == "m") {
                          mmList.add(l);
                        }
                      }
                      mmList = list;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailListScreen(
                                  name: "ျမန္မာ", bookList: mmList)));
                    });
                  },
                  leading: Icon(
                    Icons.library_books,
                    size: 30,
                  ),
                  title: Text(
                    "Law (Myanmar)",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () async {
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
                  leading: Icon(
                    Icons.library_books,
                    size: 30,
                  ),
                  title: Text(
                    "Law (English)",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
