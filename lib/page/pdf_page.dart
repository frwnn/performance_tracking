import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:performance_tracking/performance/widget/laporan_pdf.dart';

class PDFpage extends StatefulWidget {
  const PDFpage({Key? key}) : super(key: key);

  @override
  State<PDFpage> createState() => _PDFpageState();
}

class _PDFpageState extends State<PDFpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Create PDF'),
          onPressed: _createPDF,
        ),
      ),
    );
  }

  Future<void> _createPDF() async {
    PdfDocument document = PdfDocument();
    document.pages.add();

    List<int> bytes = document.save();
    document.dispose();

    SaveAndLaunchFile(bytes, 'Output.pdf');
  }
}
