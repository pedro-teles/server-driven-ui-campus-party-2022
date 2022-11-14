import 'package:flutter/material.dart';

class ArtworkCard extends StatelessWidget {
  const ArtworkCard({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0))
        ),
        child: Image.network(imageUrl),
      ),
    );
  }
}
