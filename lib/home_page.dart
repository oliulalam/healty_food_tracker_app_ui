import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA1ABD1),
      appBar: AppBar(
        backgroundColor: Color(0xFFA1ABD1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/user.jpeg'),
            ),
            Row(
              children: [
                Icon(Icons.chevron_left, size: 35),
                SizedBox(width: 4),
                Icon(Icons.calendar_today, size: 18),
                SizedBox(width: 6),
                Text(
                  "Today, 18 Apr",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.chevron_right, size: 35),
              ],
            ),
            
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xFFA9B9F8),
                borderRadius: BorderRadius.circular(22)
              ),
                child: Icon(Icons.notifications_on_outlined, size: 35,)
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF8E86E8),
              borderRadius: BorderRadius.circular(24)
            ),
            child: Row(
              children: [
                CustomPaint(
                  size: const Size(120, 120),
                  painter: ArcPainter(progress: 0.68),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "545",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "🔥 1260 kcal left",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
