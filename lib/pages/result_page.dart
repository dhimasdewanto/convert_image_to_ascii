import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blocs/image_process/image_process_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: BlocBuilder<ImageProcessBloc, ImageProcessState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            show: (imageFile, textBuffer) {
              return ListView(
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
              );
            },
          );
        },
      ),
    );
  }
}
