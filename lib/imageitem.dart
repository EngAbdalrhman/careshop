import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Image.asset(
        'images/skincare.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
