import 'package:flutter/material.dart';

class BigArtworkCard extends StatelessWidget {
  const BigArtworkCard({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0))
        ),
        child: Image.network(imageUrl),
      ),
    );
  }
}
