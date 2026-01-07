import 'dart:math';

import 'package:flutter/material.dart';

class RadialPainterTwo extends CustomPainter {
  final double progress;
  final Color color;

  RadialPainterTwo({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    // ১. পেছনের আবছা দাগ (Background Track)
    final bgPaint = Paint()
      ..color = color.withOpacity(0.2) // মূল রঙের হালকা ভার্সন
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2; // দাগের পূরূত্ব

    // ১৩৫ ডিগ্রি থেকে শুরু করে ২৭০ ডিগ্রি ঘুরবে (নিচে ফাঁকা থাকবে)
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      (135 * pi / 180),
      (270 * pi / 180),
      false,
      bgPaint,
    );

    // ২. সামনের মেইন দাগ (Foreground Progress)
    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2; // দাগের পূরূত্ব

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      (135 * pi / 180),
      ((270 * pi / 180) * progress),
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant RadialPainterTwo oldDelegate) {
    return oldDelegate.progress != progress;
  }
}