import 'dart:convert';

import 'package:flutter/material.dart';

class ThaedPage extends StatelessWidget {
  const ThaedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: 15,),
                  height: 250,
                  width: 200,
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
                        height: 200,
                        width: 200,
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
                      SizedBox(height: 10,),
                      Text("Vegan", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, fontFamily: 'Roboto'),),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
