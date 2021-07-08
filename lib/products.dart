import 'package:flutter/material.dart';
import 'carecard.dart';
import 'searchbar.dart';

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              searchBar(),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            'Found 10 Results',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                            maxLines: 2,
                            //eclips
                          ),
                          CareCard(
                            img: 'skincare.png',
                            txt: 'care and lovely',
                            header: 'Skin Care',
                          ),
                          CareCard(
                            img: 'skincare.png',
                            txt: 'care and lovely',
                            header: 'Skin Care',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CareCard(
                            img: 'skincare.png',
                            txt: 'care and lovely',
                            header: 'Skin Care',
                          ),
                          CareCard(
                            img: 'skincare.png',
                            txt: 'care and lovely',
                            header: 'Skin Care',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
