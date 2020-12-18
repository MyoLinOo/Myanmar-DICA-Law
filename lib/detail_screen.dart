import 'package:flutter/material.dart';
import 'package:myanmar_book/db/Book.dart';
import 'package:myanmar_book/main_drawer.dart';
import 'package:myanmar_book/my_theme.dart';
import 'package:myanmar_book/pdf_viewer.dart';

class DetailListScreen extends StatefulWidget {
  final String name;
  final List bookList;

  const DetailListScreen({this.name, this.bookList});
  @override
  _DatailScreenState createState() => _DatailScreenState();
}

class _DatailScreenState extends State<DetailListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MainDrawer(),
        appBar: AppBar(
          title: Text("${widget.name}"),
        ),
        body: ListView.builder(
          // separatorBuilder: (BuildContext context, int index) =>
          //     const Divider(),
          itemCount: widget.bookList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  print(widget.bookList[index].name);
                  print(widget.bookList[index].pdfName);
                  print(widget.bookList[index].type);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              widget.bookList[index].pdfName != null
                                  ? PdfViewer(
                                      pdf: widget.bookList[index].pdfName,
                                      title: widget.bookList[index].name)
                                  : PdfViewer(
                                      pdf: "no_pdf.pdf",
                                      title: widget.bookList[index].name)));
                },
                child: Card(
                  child: ListTile(
                    // dense: true,
                    title: Text(
                      MyTheme.mmText("${widget.bookList[index].name}"),
                      maxLines: 2,
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.navigate_next, color: Colors.green),
                  ),
                ));
          },
        ));
  }

  List<Book> enList() {
    List<Book> enlist = [];
    for (var l in widget.bookList) {
      if (l.type == 'e') {
        enlist.add(l);
      }
    }
    return enlist;
  }

  List<Book> mmList() {
    List<Book> mmlist = [];

    for (var l in widget.bookList) {
      if (l.type != 'e') {
        mmlist.add(l);
      }
    }
    return mmlist;
  }
}
