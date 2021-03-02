import 'package:flutter/material.dart';

class AnimatedArrow extends StatefulWidget {
  const AnimatedArrow({Key? key}) : super(key: key);

  @override
  _AnimatedArrowState createState() => _AnimatedArrowState();
}

class _AnimatedArrowState extends State<AnimatedArrow> {
  var _isVisible = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
          _isVisible = !_isVisible;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1 : 0.3,
      onEnd: () {
        setState(() {
          _isVisible = !_isVisible;
        });
      },
      duration: const Duration(milliseconds: 500),
      child: const Icon(Icons.arrow_right_alt_outlined),
    );
  }
}
