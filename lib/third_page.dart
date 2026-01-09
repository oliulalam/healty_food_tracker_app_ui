import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healty_food_tracker_app/widgets/bottom_navigation.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFBCE8AE),
          title: Text("Recipes"),
          actions: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xFF93D877),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(child: Icon(Icons.search, size: 30)),
            ),
            SizedBox(width: 10),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xFF93D877),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Icon(Icons.notifications_none_outlined, size: 30),
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xFF93D877),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(child: Icon(Icons.bookmark_add_outlined, size: 30)),
            ),

            SizedBox(width: 20),
          ],
        ),

        body: Column(
          children: [
            SizedBox(height: 10),

            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 180,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFEBDDDCFF),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/one.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Vegan",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            TabBar(
              tabs: [
                Text("My preferences", style: TextStyle(fontSize: 18)),
                Text("All", style: TextStyle(fontSize: 18)),
              ],
            ),
            SizedBox(height: 15),

            Expanded(
              child: TabBarView(
                children: [

                  // ---------- TAB 1 ----------
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Breakfast",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      SizedBox(
                        height: 270,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 270,
                                    width: 175,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEBDDDCFF),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 160,
                                              width: 175,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/images/ten.jpeg',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  topLeft: Radius.circular(20),
                                                ),
                                              ),
                                            ),

                                            Positioned(
                                              bottom: 0,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  10.0,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                        color: Colors
                                                            .greenAccent
                                                            .shade100,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Icon(
                                                        Icons.menu_book,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Container(
                                                      height: 35,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black45,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              12,
                                                            ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.ramen_dining,
                                                            color: Colors
                                                                .greenAccent,
                                                          ),
                                                          Text(
                                                            '5',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(width: 15),
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black45,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              25,
                                                            ),
                                                      ),
                                                      child: Icon(
                                                        Icons
                                                            .bookmark_add_outlined,
                                                        color: Colors.white,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Salad with tomatoes",
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  height: 0.9,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Roboto',
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                              SizedBox(height: 8),
                                              Container(
                                                height: 30,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  color: Colors
                                                      .amberAccent
                                                      .shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 5.0,
                                                        right: 5,
                                                      ),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .local_fire_department,
                                                        color: Colors
                                                            .amber
                                                            .shade900,
                                                      ),
                                                      Text(
                                                        '194 kcal',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
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
                                  ), // main container



                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 15),
                        child: Text("Lunch", style: TextStyle(fontSize: 25,),),
                      )
                    ],
                  ),//TabBarView Column


                  // ---------- TAB 2 ----------
                  Center(
                    child: Text(
                      "All Recipes",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ), //Top Column

        bottomNavigationBar: MyBottomNavigation(),

      ),
    );
  }
}
