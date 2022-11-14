import 'package:json_annotation/json_annotation.dart';
part 'home.g.dart';

@JsonSerializable()
class Home {
  Home(this.sections);

  final List<HomeSections> sections;

  factory Home.fromJson(Map<String,dynamic> data) => _$HomeFromJson(data);

  Map<String,dynamic> toJson() => _$HomeToJson(this);

  List<Object?> allSections() {
    final List<Object?> sections = [];

    this.sections.forEach((section) { sections.addAll(section.props);});

    return sections;
  }
}

@JsonSerializable()
class HomeSections {
  HomeSections(this.banner, this.artworkCardList, this.bigArtworkCardListSection);

  final BannerSection? banner;
  final ArtworkCardListSection? artworkCardList;
  final BigArtworkCardListSection? bigArtworkCardListSection;

  factory HomeSections.fromJson(Map<String,dynamic> data) => _$HomeSectionsFromJson(data);

  Map<String,dynamic> toJson() => _$HomeSectionsToJson(this);

  List<Object?> get props => [banner, artworkCardList, bigArtworkCardListSection].where((element) => element != null).toList();
}

@JsonSerializable()
class BannerSection {
  BannerSection(this.title, this.url, this.button, this.fontSize, this.categories);

  final String? title;
  final String? url;
  final String? button;
  final double? fontSize;
  final List<String>? categories;

  factory BannerSection.fromJson(Map<String,dynamic> data) => _$BannerSectionFromJson(data);

  Map<String,dynamic> toJson() => _$BannerSectionToJson(this);
}

@JsonSerializable()
class ArtworkCardListSection {
  ArtworkCardListSection(this.title, this.artworks);

  final String? title;
  final List<String>? artworks;

  factory ArtworkCardListSection.fromJson(Map<String,dynamic> data) => _$ArtworkCardListSectionFromJson(data);

  Map<String,dynamic> toJson() => _$ArtworkCardListSectionToJson(this);
}

@JsonSerializable()
class BigArtworkCardListSection {
  BigArtworkCardListSection(this.title, this.artworks);

  final String? title;
  final List<String>? artworks;

  factory BigArtworkCardListSection.fromJson(Map<String,dynamic> data) => _$BigArtworkCardListSectionFromJson(data);

  Map<String,dynamic> toJson() => _$BigArtworkCardListSectionToJson(this);
}
