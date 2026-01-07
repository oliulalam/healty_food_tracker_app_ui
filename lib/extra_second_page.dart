import 'package:flutter/material.dart';

class SimpleRecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ১. সবার নিচে ব্যাকগ্রাউন্ড ইমেজ
          Container(
            height: MediaQuery.of(context).size.height * 0.45, // স্ক্রিনের ৪৫% হাইট নিবে
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1546069901-ba9599a7e63c', // আপনার ইমেজ লিংক
              fit: BoxFit.cover,
            ),
          ),

          // ২. উপরে স্ক্রল করার মত সাদা কন্টেন্ট বক্স
          SingleChildScrollView(
            child: Column(
              children: [
                // ইমেজের জায়গাটুকু খালি রাখার জন্য একটা স্বচ্ছ বক্স
                SizedBox(height: MediaQuery.of(context).size.height * 0.4),

                // আসল সাদা কন্টেন্ট বক্স
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
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        // ছোট ড্র্যাগ বার (ঐচ্ছিক)
                        Container(
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 20),

                        // টাইটেল
                        Text(
                          "Spaghetti alla Carbonara",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 15),

                        // বাকি সব কন্টেন্ট এখানে দিবেন (যেমন চার্ট, বর্ণনা)
                        Text(
                          "Transform your culinary remnants into a savory masterpiece...",
                          style: TextStyle(color: Colors.grey[600], height: 1.5),
                        ),

                        // পেজটি বড় করার জন্য ডামি কন্টেন্ট
                        ListView.builder(
                          shrinkWrap: true, // কলামের ভেতর লিস্ট ব্যবহারের জন্য জরুরি
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) => ListTile(title: Text("Step $index")),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ৩. উপরের আইকনগুলো (Back and Save)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.arrow_back, color: Colors.black)),
                  CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.bookmark_border, color: Colors.black)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}