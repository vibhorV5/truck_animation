import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  late Paint _paintGreen;
  late Paint _paintGrey;
  final double _fraction;

  LinePainter(this._fraction) {
    _paintGreen = Paint()
      ..color = Colors.green.shade800
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.square;

    _paintGrey = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.square;
  }

  @override
  void paint(Canvas canvas, Size size) {
    debugPrint('paint $_fraction');

    canvas.drawLine(
        const Offset(0.0, 0.0), Offset(size.width, 0.0), _paintGrey);
    canvas.drawLine(const Offset(0.0, 0.0), Offset(size.width * _fraction, 0.0),
        _paintGreen);

    // var rect = Offset(0.0, 0.0) & size;
    // canvas.drawRect(rect, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // throw UnimplementedError();
  }
}
