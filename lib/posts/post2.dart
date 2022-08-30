import 'package:flutter/material.dart';

import '../utilis/posttemplate.dart';

class Post2 extends StatelessWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Postemplate(
      username: 'danyial',
      vedioDescription: '#study',
      numberofLikes: '1.2M',
      numberofComments: '132',
      numberofShares: '23',
      userPost: Container(
        color: Colors.green[100],
      ),
    );
  }
}


// hello 