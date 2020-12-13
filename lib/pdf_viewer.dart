import 'dart:typed_data';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatefulWidget {
  final String pdf;
  final String title;

  PdfViewer({this.pdf, this.title});
  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  String engPdf = 'assets/economic_eng.pdf';
  String myaPdf = 'assets/invest.pdf';
  String subject = 'follow me';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  _shareMixed();
                })
          ],
          title: Text("${widget.title}"),
        ),
        body: SfPdfViewer.asset("assets/${widget.pdf}"));
  }

  Future<void> _shareMixed() async {
    try {
      final ByteData bytes = await rootBundle.load("assets/${widget.pdf}");
      await Share.file('esys image', "${widget.pdf}",
          bytes.buffer.asUint8List(), 'assets/pdf');
    } catch (e) {
      print('error: $e');
    }
  }

  // _share(BuildContext context) {
  //   final RenderBox box = context.findRenderObject();
  //   Share.share( text,
  //       subject: subject,
  //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  // }
}
//   _onShare(BuildContext context) async {
//     // A builder is used to retrieve the context immediately
//     // surrounding the RaisedButton.
//     //
//     // The context's `findRenderObject` returns the first
//     // RenderObject in its descendent tree when it's not
//     // a RenderObjectWidget. The RaisedButton's RenderObject
//     // has its position and size after it's built.
//     final RenderBox box = context.findRenderObject();

//     final String path = "assets/invest.pdf";
//     await Share.shareFiles(path,
//         sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
//   }

//   _onShareWithEmptyOrigin(BuildContext context) async {
//     await Share.share("text");
//   }
// }
