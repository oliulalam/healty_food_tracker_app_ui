import 'package:flutter/material.dart';
import 'package:healty_food_tracker_app/widgets/radial_painter.dart'; // আপনার ফোল্ডার স্ট্রাকচার অনুযায়ী ইমপোর্ট

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> listImageDetails = [
    {
      'image': 'assets/images/one.jpeg',
      'title': 'Hamburger',
      'kcol': '654 Kcol',
      'stock': '90',
    },

    {
      'image': 'assets/images/twoo.jpg',
      'title': 'Cheeseburger',
      'kcol': '453 Kcol',
      'stock': '33',
    },

    {
      'image': 'assets/images/three.jpeg',
      'title': 'Sandwich',
      'kcol': '225 Kcol',
      'stock': '89',
    },

    {
      'image': 'assets/images/four.jpeg',
      'title': 'Milkshake',
      'kcol': '234 Kcol',
      'stock': '7',
    },

    {
      'image': 'assets/images/five.jpeg',
      'title': 'Muffin',
      'kcol': '987 Kcol',
      'stock': '67',
    },

    {
      'image': 'assets/images/six.jpeg',
      'title': 'Burrito',
      'kcol': '245 Kcol',
      'stock': '21',
    },

    {
      'image': 'assets/images/seven.jpeg',
      'title': 'Hot dog',
      'kcol': '1235 Kcol',
      'stock': '11',
    },

    {
      'image': 'assets/images/eight.jpeg',
      'title': 'Fried chicken',
      'kcol': '345 Kcol',
      'stock': '43',
    },

    {
      'image': 'assets/images/nine.jpeg',
      'title': 'Donuts',
      'kcol': '123 Kcol',
      'stock': '32',
    },

    {
      'image': 'assets/images/ten.jpeg',
      'title': 'Onion ring',
      'kcol': '2345 Kcol',
      'stock': '12',
    },
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1CEF8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFD1CEF8),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: const Color(0xFF847AFF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomPaint(
                          size: Size(140, 140),
                          painter: RadialPainter(
                            progress: 0.40,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "545",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.local_fire_department,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                Text(
                                  "1260 kcal left",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Proteins",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "5 ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "/79g",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              Stack(
                                children: [
                                  Container(
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 5 / 79,
                                    child: Container(
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFF9B9B),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // ----- ২. Carbs -----
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Carbs",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "20",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "/196g",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Stack(
                                children: [
                                  Container(
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 20 / 196,
                                    child: Container(
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCFFF98),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // ----- ৩. Carbs -----
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fat",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "2",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '/52g',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Stack(
                                children: [
                                  Container(
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 2 / 52,
                                    child: Container(
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFBC6D),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Journal",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Icon(Icons.drag_handle_outlined, size: 50),
                        ],
                      ),
                    ),

                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.all(10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: 7,
                          childAspectRatio: 0.76,
                        ),

                        itemCount: listImageDetails.length,
                        itemBuilder: (context, index) {
                          final list = listImageDetails[index];
                          return Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 250,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(list['image']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10.0,
                                          top: 10.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Container(
                                                height: 35,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Icon(
                                                  Icons.local_fire_department,
                                                  size: 28,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 30.0,
                                              left: 30.0,
                                            ),
                                            child: Text(
                                              list['title']!,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: 40,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department,
                                                    color: Colors.amber,
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    list['kcol']!,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Spacer(),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10.0,
                                          bottom: 10.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 45,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                color: Colors.black87,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.ramen_dining,
                                                    color:
                                                        Colors.green.shade300,
                                                    size: 30,
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    list['stock']!,
                                                    style: TextStyle(
                                                      fontSize: 22,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: SizedBox(
        height: 60, // পুরো নেভিগেশন এরিয়ার উচ্চতা
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
                height: 60,
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
                      onPressed: () => setState(() => _selectedIndex = 0),
                    ),

                    // আইকন ২: হার্ট
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                        size: 28,
                      ),
                      onPressed: () => setState(() => _selectedIndex = 1),
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
                      onPressed: () => setState(() => _selectedIndex = 2),
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
      ),
    );
  }
}
