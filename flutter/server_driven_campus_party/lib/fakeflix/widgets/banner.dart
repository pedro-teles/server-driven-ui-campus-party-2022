import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  const Banner(
      {Key? key,
      required this.title,
      required this.bannerUrl,
      required this.fontSize,
      this.buttonText,
      this.categories})
      : super(key: key);

  final String title;
  final String bannerUrl;
  final String? buttonText;
  final double fontSize;
  final List<String>? categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(bannerUrl),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        categories != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: categories!
                    .map((category) => Text(
                          '| $category |',
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                    .toList(),
              )
            : const SizedBox(),
        const SizedBox(
          height: 8.0,
        ),
        buttonText != null
            ? SizedBox(
                width: 120.0,
                height: 40.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    textStyle: MaterialStateTextStyle.resolveWith(
                      (states) => const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white),
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [const Icon(Icons.play_arrow), Text(buttonText!)],
                  ),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
