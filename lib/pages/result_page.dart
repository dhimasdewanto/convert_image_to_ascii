import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key key,
    @required this.imageFile,
    @required this.textBuffer,
  }) : super(key: key);

  final File imageFile;
  final StringBuffer textBuffer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: ListView(
        children: [
          Image.file(
            imageFile,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              textBuffer.toString(),
              style: GoogleFonts.robotoMono(
                fontSize: 2,
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
