import 'package:flutter/material.dart';

Row searchBar() {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(15.0),
        width: 375,
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Skin Care',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Icon(
            Icons.filter,
            color: Colors.black,
          ),
        ),
      )
    ],
  );
}
