import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/riverpod.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final controller = watch(imageProcessProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: ListView(
        children: [
          // Image.file(
          //   File(controller.imagePath),
          //   width: double.infinity,
          //   fit: BoxFit.contain,
          // ),
          FutureBuilder<StringBuffer>(
            future: controller.getStringBuffer(),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Offstage();
              }
              final textBuffer = snapshot.data;
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  textBuffer.toString(),
                  style: GoogleFonts.robotoMono(
                    fontSize: 2,
                  ),
                  softWrap: false,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
