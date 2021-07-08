import 'package:flutter/material.dart';
import 'screen2.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Care Shop',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
              ),
            ),
            actions: [
              Icon(
                Icons.open_in_browser,
                color: Colors.black,
              ),
            ],
            backgroundColor: Colors.grey[300],
          ),
          body: ProductItem(),
        ),
      ),
    );
  }
}
