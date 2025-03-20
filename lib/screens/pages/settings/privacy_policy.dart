

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'dart:io';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  String localPath = "";

  @override
  void initState() {
    super.initState();
    loadPDF();
  }

  Future<void> loadPDF() async {
    final ByteData data = await rootBundle.load("assets/Privacy Policy.pdf");
    final Uint8List bytes = data.buffer.asUint8List();
    final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/privacy_policy.pdf");
    await file.writeAsBytes(bytes, flush: true);

    setState(() {
      localPath = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy")),
      body: localPath.isEmpty
          ? Center(child: CircularProgressIndicator())
          : PDFView(
        filePath: localPath,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: true,
        pageSnap: true,
        fitPolicy: FitPolicy.HEIGHT,
      ),
    );
  }
}