import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          Icon(
            Icons.headphones,
            size: 40.0,
          ),
          Text(
            'Health',
            style: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
