import 'package:flutter/material.dart';

import 'big_artwork_card.dart';

class BigArtworkList extends StatelessWidget {
  const BigArtworkList({Key? key, this.title, required this.urls})
      : super(key: key);

  final String? title;
  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        title != null
            ? Text(
                title!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
        SingleChildScrollView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...urls.map((url) {
                return BigArtworkCard(imageUrl: url);
              })
            ],
          ),
        )
      ],
    );
  }
}
