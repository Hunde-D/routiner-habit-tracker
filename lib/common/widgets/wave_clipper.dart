import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const curveHeight = 30.0; // Height of the curve
    const controlPointHeight = 20.0; // Control point for smoothness

    // Start from the top-left
    path.lineTo(0, curveHeight);

    // Create a smooth curve
    path.quadraticBezierTo(
      size.width / 4, curveHeight - controlPointHeight, // Control point 1
      size.width / 2, curveHeight, // Peak
    );
    path.quadraticBezierTo(
      3 * size.width / 4, curveHeight + controlPointHeight, // Control point 2
      size.width, curveHeight, // End of curve
    );

    // Extend to bottom-right and close the path
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TopRoundedClipper extends CustomClipper<Path> {
  final double radius;

  TopRoundedClipper({this.radius = 20.0});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
