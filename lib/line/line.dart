import 'package:flutter/material.dart';
import 'package:truck_animation/line/line_painter.dart';

class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> with SingleTickerProviderStateMixin {
  // late final AnimationController _controller = AnimationController(
  //     vsync: this, duration: const Duration(milliseconds: 2300));
  // late Animation<Offset> _animation =
  //     Tween(begin: Offset(1.7, 0), end: Offset(6.7, 0)).animate(_controller);
  // double _fraction = 0.0;
  double _fraction = 0.0;
  late Animation<double> animation;

  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 2300), vsync: this);

  @override
  void initState() {
    super.initState();

    animation = Tween(begin: 0.0, end: 0.4).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = animation.value;
        });
      });
    _controller.forward();

    // _animation.addListener(() {
    //   setState(() {
    //     _fraction = _animation.value as double;
    //   });
    // });
    // _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(_fraction),
    );
  }
}
