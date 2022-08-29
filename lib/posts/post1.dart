import 'package:flutter/material.dart';

import '../utilis/posttemplate.dart';

class Post1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Postemplate(
      username: 'iamehsan',
      vedioDescription: 'tiktok_ui',
      numberofLikes: '1.2M',
      numberofComments: '1232',
      numberofShares: '2321',
      userPost: Container(
        color: Colors.black,
      ),
    );
  }
}
