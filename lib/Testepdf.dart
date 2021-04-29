import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


/// Represents Homepage for Navigation
class TestePdf extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<TestePdf> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syncfusion Flutter PDF Viewer'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'http://energycold.com.br/public/img/upload/fabricante-29/WEG-cfw-09-manual-do-usuario-0899.5298-4.4x-manual-portugues-br.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}