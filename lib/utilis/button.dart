import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final icon;
  final String number;
  Mybutton({this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(number),
          ],
        ));
  }
}
