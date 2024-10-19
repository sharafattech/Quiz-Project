// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sharafat_hassan/practice.dart';
import 'package:sharafat_hassan/quiz_page.dart';

class HomePageDesign extends StatelessWidget {
  const HomePageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      ]),
      backgroundColor: Colors.blue[700],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Well come,',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'to our app',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue[50],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search anything here')
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do you feel',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => QuizPage(),
                  //     ));
                },
                child: PostContainer(
                    d_icon: Icon(
                      Icons.emoji_emotions,
                      size: 50,
                    ),
                    child: 'Happy'),
              ),
              SizedBox(
                width: 30,
              ),
              PostContainer(
                  d_icon: Icon(
                    Icons.emoji_emotions,
                    size: 50,
                  ),
                  child: 'Happy'),
              SizedBox(
                width: 30,
              ),
              PostContainer(
                  d_icon: Icon(
                    Icons.emoji_emotions,
                    size: 50,
                  ),
                  child: 'Happy'),
              SizedBox(
                width: 30,
              ),
              PostContainer(
                  d_icon: Icon(
                    Icons.emoji_emotions,
                    size: 50,
                  ),
                  child: 'Happy'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListViewPractice(
                      simple_icon: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),
                      tltle: Text('My name is Sharafat'),
                      subtitle: Text('I am well'));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
