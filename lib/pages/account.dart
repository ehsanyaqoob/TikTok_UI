// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utilis/profileTab-2.dart';
import '../utilis/profileTab-3.dart';
import '../utilis/profileTab_1.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ehsanyaqoob',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: [
            Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // profile
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
            // username

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '@iamehsan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: prefer_const_literals_to_create_immutables
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('33',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            )),
                        Text(
                          'following',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: Container(
                    // color: Colors.yellow,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('40',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            )),
                        Text(
                          'followers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('1.2M',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            )),
                        Text(
                          'Likes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.bookmark_border, color: Colors.black),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // bio

            Text(
              'Bio here',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),

            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3, color: Colors.black),
              ),
              Tab(
                icon: Icon(Icons.favorite, color: Colors.black),
              ),
              Tab(
                icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
              ),
            ]),
            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
