import 'package:flutter/material.dart' hide Banner;
import 'package:server_driven_campus_party/fakeflix/model/HomeScreenPresentation.dart';
import 'package:server_driven_campus_party/fakeflix/repository/model/home.dart';
import 'package:server_driven_campus_party/fakeflix/widgets/artwork_list.dart';
import 'package:server_driven_campus_party/fakeflix/widgets/big_artwork_list.dart';

import '../widgets/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.presentation, {Key? key}) : super(key: key);

  final HomeScreenPresentation presentation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...presentation.sections.map((section) {
                if (section is BannerSection) {
                  return Banner(
                    title: section.title!,
                    bannerUrl: section.url!,
                    buttonText: section.button,
                    fontSize: section.fontSize!,
                    categories: section.categories,
                  );
                } else if (section is ArtworkCardListSection) {
                  return ArtworkList(
                    title: section.title,
                    urls: section.artworks!,
                  );
                } else if (section is BigArtworkCardListSection) {
                  return BigArtworkList(
                    title: section.title!,
                    urls: section.artworks!,
                  );
                } else {
                  return Container();
                }
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
