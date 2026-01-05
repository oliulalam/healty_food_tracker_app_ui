import 'package:flutter/material.dart';
import 'dart:math';

// লক্ষ্য করুন: নামের আগে থেকে '_' সরিয়ে দিয়েছি যাতে অন্য ফাইল থেকে ডাকা যায়
class RadialPainter extends CustomPainter {
  final double progress;
  final Color color;

  RadialPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 1.5, size.height / 2);

    // পেছনের আবছা দাগ
    final bgPaint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      (135 * pi / 180),
      (270 * pi / 180),
      false,
      bgPaint,
    );

    // মেইন প্রোগ্রেস দাগ
    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      (145 * pi / 180),
      ((270 * pi / 180) * progress),
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant RadialPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}