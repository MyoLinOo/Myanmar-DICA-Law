import 'package:flutter/material.dart';
import 'package:myanmar_book/item.dart';
import 'package:myanmar_book/main_drawer.dart';
import 'package:myanmar_book/my_theme.dart';
import 'package:myanmar_book/pdf_viewer.dart';

class DetailListScreen extends StatefulWidget {
  final String name;

  const DetailListScreen({this.name});
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
        body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: widget.name == "English"
              ? MyTheme.engitemBank.length
              : MyTheme.myaitemBank.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => widget.name == "English"
                            ? PdfViewer(
                                pdf: MyTheme.engitemBank[index].pdf,
                                title: MyTheme.engitemBank[index].item)
                            : PdfViewer(
                                pdf: MyTheme.myaitemBank[index].pdf,
                                title: MyTheme.engitemBank[index].item)));
              },
              child: Card(
                elevation: 10,
                child: Container(
                  width: double.infinity,
                  height: 65,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Center(
                      child: Text(
                        widget.name == "English"
                            ? MyTheme.mmText(
                                "${MyTheme.engitemBank[index].item}")
                            : MyTheme.mmText(
                                "${MyTheme.myaitemBank[index].item}"),
                        maxLines: 2,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
