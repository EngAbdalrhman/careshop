import 'package:careshop/item.dart';
import 'package:flutter/material.dart';

class CareCard extends StatefulWidget {
  const CareCard({required this.img, required this.txt, required this.header});
  final String img;
  final String header;
  final String txt;

  @override
  _CareCardState createState() => _CareCardState();
}

class _CareCardState extends State<CareCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Item()),
        );

        // no set state for navigator
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/${widget.img}',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${widget.header}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${widget.txt}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                  maxLines: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\$9.99',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 90.0, bottom: 10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(Icons.local_activity),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
