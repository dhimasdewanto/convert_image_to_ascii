import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/riverpod.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final imageFile = watch(getImageProvider.state);
    final imageProcessController = watch(imageProcessProvider);
    // final textBuffer = watch(imageProcessProvider.state);

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
          FutureBuilder<StringBuffer>(
            future: imageProcessController.setStringBuffer(),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  snapshot.data.toString(),
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
