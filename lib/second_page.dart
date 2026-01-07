import 'package:flutter/material.dart';
import 'package:healty_food_tracker_app/widgets/bottom_navigation.dart';
import 'package:healty_food_tracker_app/widgets/radial_painter.dart'; // আপনার ইমপোর্ট ঠিক আছে

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              child: Image.asset(
                'assets/images/second_back.jpg',
                fit: BoxFit.cover,
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.4),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 20),

                          Text(
                            "Spaghetti alla carbonara",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              height: 0.9,
                            ),
                          ),

                          SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.local_fire_department,
                                        color: Colors.amber.shade900,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "273 kcal",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        color: Colors.green.shade700,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "10 min",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.mail_outline,
                                        color: Colors.amber.shade900,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "Service 5",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // 1. Protein Card
                                Expanded(
                                  child: MacroInfoCard(
                                    title: "Protein",
                                    percentage: 9,
                                    grams: "8g",
                                    progress: 0.09,
                                    primaryColor: Colors.pinkAccent,
                                    backgroundColor: Colors.pink.shade50,
                                  ),
                                ),
                                const SizedBox(width: 12),

                                // 2. Carbs Card
                                Expanded(
                                  child: MacroInfoCard(
                                    title: "Carbs",
                                    percentage: 13,
                                    grams: "45g",
                                    progress: 0.13,
                                    primaryColor: Colors.lightGreen,
                                    backgroundColor: Colors.green.shade50,
                                  ),
                                ),
                                const SizedBox(width: 12),

                                // 3. Fat Card
                                Expanded(
                                  child: MacroInfoCard(
                                    title: "Fat",
                                    percentage: 78,
                                    grams: "23.2g",
                                    progress: 0.78,
                                    primaryColor: Colors.orange,
                                    backgroundColor: Colors.orange.shade50,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          TabBar(
                            tabs: [
                              Text("Description", style: TextStyle(fontSize: 16),),
                              Text("Ingredients", style: TextStyle(fontSize: 16),),
                              Text("Instructions", style: TextStyle(fontSize: 16),),
                            ],
                          ),

                          SizedBox(
                            height: 300,
                            child: TabBarView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Transform your culinary remnants into a savory delight with our Spaghetti alla Carbonara recipe...",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Ingredients Section
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ingredients List",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Transform your culinary remnants into a savory delight with our Spaghetti alla Carbonara recipe...",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Instructions Section
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cooking Steps",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Transform your culinary remnants into a savory delight with our Spaghetti alla Carbonara recipe...",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(Icons.chevron_left),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(Icons.bookmark_added_outlined),
                  ),



                ],
              ),
            )

          ],
        ),

        bottomNavigationBar: MyBottomNavigation(),

      ),
    );
  }
}

// --- রিইউজেবল কার্ড উইজেট (Fixed Syntax) ---
class MacroInfoCard extends StatelessWidget {
  final String title;
  final int percentage;
  final String grams;
  final double progress;
  final Color primaryColor;
  final Color backgroundColor;

  const MacroInfoCard({
    super.key,
    required this.title,
    required this.percentage,
    required this.grams,
    required this.progress,
    required this.primaryColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // কাস্টম পেইন্টার
          SizedBox(
            height: 80,
            width: 80,
            child: CustomPaint(
              painter: RadialPainter(progress: progress, color: primaryColor),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$percentage%",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      grams,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // টাইটেল
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ); // <-- এখানে আপনার ভুল ছিল, এখন ঠিক করা হয়েছে।
  }
}
