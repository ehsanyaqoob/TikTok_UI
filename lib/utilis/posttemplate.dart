import 'package:flutter/material.dart';

import 'button.dart';

class Postemplate extends StatelessWidget {
  final String username;
  final String vedioDescription;
  final String numberofLikes;
  final String numberofComments;
  final String numberofShares;
  final userPost;

  Postemplate(
      {required this.userPost,
      required this.username,
      required this.vedioDescription,
      required this.numberofLikes,
      required this.numberofComments,
      required this.numberofShares});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // user post
        userPost,

        // user name and caption

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('@' + username,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: vedioDescription,
                ),
                TextSpan(
                    text: '#fyp #flutter #more',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))
              ])),
            ],
          ),
        ),
        // button
        // ignore: prefer_const_constructors
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                alignment: Alignment(1, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Mybutton(
                      icon: Icons.favorite,
                      number: numberofLikes,
                    ),
                    Mybutton(
                      icon: Icons.chat_bubble_outline,
                      number: numberofComments,
                    ),
                    Mybutton(
                      icon: Icons.send,
                      number: numberofShares,
                    ),
                  ],
                )))
      ],
    ));
  }
}
