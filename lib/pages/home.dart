import 'package:flutter/material.dart';

import '../posts/post1.dart';
import '../posts/post2.dart';
import '../posts/post3.dart';

class Home extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            children: [
          Post1(),
          Post2(),
          Post3(),
        ]));
  }
}
