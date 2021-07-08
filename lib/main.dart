import 'package:flutter/material.dart';
import 'products.dart';

void main() => runApp(Care());

class Care extends StatelessWidget {
  const Care({Key? key}) : super(key: key);

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
            leading: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
            title: Center(
              child: Icon(
                Icons.ac_unit,
                color: Colors.red,
              ),
            ),
            actions: [
              CircleAvatar(
                child: Icon(Icons.keyboard_alt),
                backgroundColor: Colors.red,
              )
            ],
            backgroundColor: Colors.grey[300],
          ),
          body: Products(),
        ),
      ),
    );
  }
}
