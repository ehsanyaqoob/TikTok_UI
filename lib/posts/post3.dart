import 'package:flutter/material.dart';

import '../utilis/posttemplate.dart';

class Post3 extends StatelessWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Postemplate(
      username: 'hiQasim!',
      vedioDescription: 'friends',
      numberofLikes: '1.4M',
      numberofComments: '2222',
      numberofShares: '2321',
      userPost: Container(
        color: Colors.deepPurple[100],
      ),
    );
  }
}
