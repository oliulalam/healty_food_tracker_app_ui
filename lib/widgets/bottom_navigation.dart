import 'package:flutter/material.dart';
import 'package:healty_food_tracker_app/home_page.dart';
import 'package:healty_food_tracker_app/second_page.dart';
import 'package:healty_food_tracker_app/third_page.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, // পুরো নেভিগেশন এরিয়ার উচ্চতা
      child: Stack(
        clipBehavior: Clip.none, // বাটন যাতে বারের বাইরে দেখা যায়
        alignment: Alignment.bottomCenter,
        children: [
          // ১. সাদা রাউন্ডেড বার
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // আইকন ১: হোম
                  IconButton(
                    icon: Icon(
                      Icons.home_filled,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() => _selectedIndex = 0);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),

                  // আইকন ২: হার্ট
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                    onPressed: (){
                      setState(() => _selectedIndex = 2);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    },
                  ),

                  // মাঝখানের ফাঁকা জায়গা (যেখানে বাটন বসবে)
                  const SizedBox(width: 40),

                  // আইকন ৩: বই
                  IconButton(
                    icon: Icon(
                      Icons.menu_book_outlined,
                      color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() => _selectedIndex = 2);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
                      );
                    },
                  ),

                  // আইকন ৪: প্রোফাইল
                  IconButton(
                    icon: Icon(
                      Icons.person_outline,
                      color: _selectedIndex == 3 ? Colors.black : Colors.grey,
                      size: 28,
                    ),
                    onPressed: () => setState(() => _selectedIndex = 3),
                  ),
                ],
              ),
            ),
          ),

          // ২. মাঝখানের ফ্লোটিং বাটন (গোলাপি)
          Positioned(
            bottom: 19, // বার থেকে উপরে উঠানো হলো
            child: GestureDetector(
              onTap: () {
                print("Plus Button Clicked");
              },
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF75A0), // গোলাপি রং
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFF75A0).withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
