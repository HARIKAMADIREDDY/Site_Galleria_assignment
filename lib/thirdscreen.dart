import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Thirdscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(""),
          centerTitle: true,
          flexibleSpace: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min, // Minimize the row size to wrap content
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Color.fromARGB(255, 47, 12, 222),
                  margin: EdgeInsets.only(right: 10),
                ),
                Container(
                  width: 40,
                  height: 40,
                  color:Color.fromARGB(255, 125, 167, 235),
                  margin: EdgeInsets.only(left: 10),
                ),
              ],
            ),
          ),
        ),

        

        backgroundColor: Colors.black,
        body: Stack(
          children: [
            CustomPaint(
              size: Size(double.infinity, double.infinity),
              painter: NestedArcsPainter(),
            ),
            // Icons positioned around the third arc
            _buildIcon(context, 0.300, 0.10, Icons.business),
            _buildIcon(context, 0.400, 0.24, Icons.computer_rounded),
            _buildIcon(context, 0.620, 0.28, Icons.people),
            _buildIcon(context, 0.820, 0.180, Icons.family_restroom),
            _buildIcon(context, 0.80, null, Icons.health_and_safety),
            // Text positioned between arc 2 and arc 3
            Positioned(
              top: MediaQuery.of(context).size.height * 0.300, // Adjust this value to place the text
              left: MediaQuery.of(context).size.width * 0.24, // Center the text
              child: Text(
                'Business',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 192, 249),
                  fontSize: 20,
                ),
              ),
            ),
             Positioned(
              top: MediaQuery.of(context).size.height * 0.400, // Adjust this value to place the text
              left: MediaQuery.of(context).size.width * 0.40, // Center the text
              child: Text(
                'Career',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 192, 249),
                  fontSize: 20,
                ),
              ),
            ),
             Positioned(
              top: MediaQuery.of(context).size.height * 0.620, // Adjust this value to place the text
              left: MediaQuery.of(context).size.width * 0.40, // Center the text
              child: Text(
                'Marriage',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 192, 249),
                  fontSize: 20,
                ),
              ),
            ),
             Positioned(
              top: MediaQuery.of(context).size.height * 0.820, // Adjust this value to place the text
              left: MediaQuery.of(context).size.width * 0.380, // Center the text
              child: Text(
                'Familiy',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 192, 249),
                  fontSize: 20,
                ),
              ),
            ),
             Positioned(
              top: MediaQuery.of(context).size.height * 0.90, // Adjust this value to place the text
              left: MediaQuery.of(context).size.width * 0.1, // Center the text
              child: Text(
                'Health',
                style: TextStyle(
                  color:Color.fromARGB(255, 196, 192, 249),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context, double top, double? left, IconData icon) {
    return Positioned(
      top: MediaQuery.of(context).size.height * top,
      left: left != null ? MediaQuery.of(context).size.width * left : null,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 192, 200, 220),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            width: 40,
            height: 40,
            color: Color.fromARGB(255, 78, 98, 243),
            child: Center(
              child: Icon(icon, color: Colors.white, size: 30),
            ),
          ),
        ),
      ),
    );
  }
}

class NestedArcsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint objects and arc drawing logic (same as before)
    Paint paint1 = Paint()..color = const Color.fromARGB(255, 15, 15, 16);
    Paint paint2 = Paint()..color = const Color.fromARGB(255, 15, 15, 16);
    Paint paint3 = Paint()..color = const Color.fromARGB(255, 15, 15, 16);
    Paint paint4 = Paint()..color = const Color.fromARGB(255, 15, 15, 16);
    Paint paint5 = Paint()..color = Color.fromARGB(255, 78, 98, 243);

    Paint borderPaint1 = Paint()
      ..color = Color.fromARGB(255, 196, 192, 249)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    Paint borderPaint2 = Paint()
      ..color = Color.fromARGB(255, 196, 192, 249)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    Paint borderPaint3 = Paint()
      ..color = Color.fromARGB(255, 196, 192, 249)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    Paint borderPaint4 = Paint()
      ..color = Color.fromARGB(255, 196, 192, 249)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double maxHeight = size.height;
    double radius = maxHeight / 2;
    double sweepAngle = 4.5 * 3.14;
    double leftOffset = -radius * 0.2;

    // Draw the arcs (same as before)
    // Outer arc
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius) / 10, radius * 2, radius * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      paint1,
    );
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius) / 10, radius * 2, radius * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      borderPaint1,
    );

    // Second arc
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.8) / 2, (radius * 0.8) * 2, (radius * 0.8) * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      paint2,
    );
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.8) / 2, (radius * 0.8) * 2, (radius * 0.8) * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      borderPaint2,
    );

    // Third arc
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.6) / 2, (radius * 0.6) * 2, (radius * 0.6) * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      paint3,
    );
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.6) / 2, (radius * 0.6) * 2, (radius * 0.6) * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      borderPaint3,
    );

    // Fourth arc
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.4) / 2, (radius * 0.4) * 2, (radius * 0.4) * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      paint4,
    );
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.4) / 2, (radius * 0.4) * 2, (radius * 0.4) * 2),
      1.5 * 3.14,
      sweepAngle,
      false,
      borderPaint4,
    );

    // Innermost arc (blue arc without border)
    canvas.drawArc(
      Rect.fromLTWH(leftOffset, (maxHeight - radius * 0.2) / 2, (radius * 0.3) * 2, (radius * 0.3) * 2),
      2.5 * 3.14,
      sweepAngle,
      false,
      paint5,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
