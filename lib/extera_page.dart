import 'package:flutter/material.dart';
import 'package:healty_food_tracker_app/widgets/radial_painter.dart'; // আপনার ফোল্ডার স্ট্রাকচার অনুযায়ী ইমপোর্ট

class CustomCiruler extends StatelessWidget {
  const CustomCiruler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA1ABD1), // অ্যাপের মেইন ব্যাকগ্রাউন্ড

      // === অ্যাপ বার (আপনার কোড) ===
      appBar: AppBar(
        backgroundColor: const Color(0xFFA1ABD1),
        elevation: 0, // শ্যাডো রিমুভ করলাম যাতে ক্লিন দেখায়
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/user.jpeg'),
            ),
            Row(
              children: const [
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
                color: const Color(0xFFA9B9F8),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Icon(Icons.notifications_on_outlined, size: 35),
            )
          ],
        ),
      ),

      // === বডি সেকশন ===
      body: Padding(
        padding: const EdgeInsets.all(16.0), // চারপাশ থেকে একটু ফাঁকা
        child: Column(
          children: [
            // স্পেস দিয়ে কার্ডটি একটু নিচে নামানো হলো
            const SizedBox(height: 20),

            // === নিউট্রিশন কার্ড কন্টেইনার ===
            Container(
              height: 240,
              decoration: BoxDecoration(
                color: const Color(0xFF847AFF), // কার্ডের পার্পল ব্যাকগ্রাউন্ড
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // ==========================
                  // বাম পাশ (গোল চাকা)
                  // ==========================
                  Expanded(
                    flex: 4,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomPaint(
                          size: const Size(140, 140),
                          painter: RadialPainter(
                            progress: 0.65,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "545",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(Icons.local_fire_department,
                                    color: Colors.amber, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  "1260 kcal left",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  // ==========================
                  // ডান পাশ (লিস্ট)
                  // ==========================
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 25, 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // ----- ১. Proteins -----
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Proteins",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "5 ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        TextSpan(
                                            text: "/79g",
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Stack(
                                children: [
                                  Container(
                                    height: 6,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 5 / 79,
                                    child: Container(
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFF9B9B),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                          // ----- ২. Carbs -----
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Carbs",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "20 ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        TextSpan(
                                            text: "/196g",
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Stack(
                                children: [
                                  Container(
                                    height: 6,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 20 / 196,
                                    child: Container(
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFCFFF98),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                          // ----- ৩. Fat -----
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Fat",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 14)),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "2 ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        TextSpan(
                                            text: "/52g",
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Stack(
                                children: [
                                  Container(
                                    height: 6,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 2 / 52,
                                    child: Container(
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFBC6D),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}