import 'dart:typed_data';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myanmar_book/my_theme.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  if (widget.pdf != null) {
                    _shareMixed();
                  }
                })
          ],
          title: Text(MyTheme.mmText("${widget.title}")),
        ),
        body: SfPdfViewer.asset("assets/${widget.pdf}") != null
            ? SfPdfViewer.asset("assets/${widget.pdf}")
            : Center(child: Text("Pdf File is not found")));
  }

  Future<void> _shareMixed() async {
    try {
      if (widget.pdf != null) {
        final ByteData bytes = await rootBundle.load("assets/${widget.pdf}");
        await Share.file('esys image', "${widget.pdf}",
            bytes.buffer.asUint8List(), 'assets/pdf');
      }
    } catch (e) {
      print('error: $e');
    }
  }
}
