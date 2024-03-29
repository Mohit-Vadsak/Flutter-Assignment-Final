import 'package:flutter/material.dart';

class EmailFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: CustomPaint(
        child: Container(),
        foregroundPainter: FloatingPainter(),
      ),
      onPressed: () {},
      backgroundColor: Colors.white,
    );
  }
}

//Used to make new Add Mail Button in Gmail. Materialistic UI
//The CustomPainter subclass overrides two methods: paint() and shouldRepaint().

class FloatingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint amberPaint = Paint()
      ..color = Colors.amber
      ..strokeWidth = 5;
    Paint greenPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 5;
    Paint bluePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;
    Paint redPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5;
    canvas.drawLine(Offset(size.width * 0.27, size.height * 0.5),
        Offset(size.width * 0.5, size.height * 0.5), amberPaint);
    canvas.drawLine(
        Offset(size.width * 0.5, size.height * 0.5),
        Offset(size.width * 0.5, size.height - (size.height * 0.27)),
        greenPaint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.5),
        Offset(size.width - (size.width * 0.27), size.height * 0.5), bluePaint);
    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.5),
        Offset(size.width * 0.5, size.height * 0.27), redPaint);
  }

  //shouldRepaint() is called when the CustomPainter is rebuilt.
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
