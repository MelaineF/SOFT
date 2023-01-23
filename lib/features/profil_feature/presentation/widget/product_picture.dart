import 'package:flutter/material.dart';

class ProductPicture extends StatelessWidget {
  const ProductPicture({Key? key, required this.pictureUrl}) : super(key: key);

  final String pictureUrl;

  @override
  Widget build(BuildContext context) =>
      Container(
        height: 200,
        width: double.infinity,
        color: Colors.white,
        child: Image.network(
          pictureUrl,
          width: 80,
          height: 80,
        ),
      );
}
