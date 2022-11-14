// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) {
  return Home(
    (json['sections'] as List<dynamic>)
        .map((e) => HomeSections.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'sections': instance.sections,
    };

HomeSections _$HomeSectionsFromJson(Map<String, dynamic> json) {
  return HomeSections(
    json['banner'] == null
        ? null
        : BannerSection.fromJson(json['banner'] as Map<String, dynamic>),
    json['artwork_card_list'] == null
        ? null
        : ArtworkCardListSection.fromJson(
            json['artwork_card_list'] as Map<String, dynamic>),
    json['big_artwork_card_list'] == null
        ? null
        : BigArtworkCardListSection.fromJson(
            json['big_artwork_card_list'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HomeSectionsToJson(HomeSections instance) =>
    <String, dynamic>{
      'banner': instance.banner,
      'artwork_card_list': instance.artworkCardList,
      'big_artwork_card_list': instance.bigArtworkCardListSection,
    };

BannerSection _$BannerSectionFromJson(Map<String, dynamic> json) {
  return BannerSection(
    json['title'] as String?,
    json['url'] as String?,
    json['button'] as String?,
    (json['fontSize'] as num?)?.toDouble(),
    (json['categories'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$BannerSectionToJson(BannerSection instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'button': instance.button,
      'fontSize': instance.fontSize,
      'categories': instance.categories,
    };

ArtworkCardListSection _$ArtworkCardListSectionFromJson(
    Map<String, dynamic> json) {
  return ArtworkCardListSection(
    json['title'] as String?,
    (json['artworks'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$ArtworkCardListSectionToJson(
        ArtworkCardListSection instance) =>
    <String, dynamic>{
      'title': instance.title,
      'artworks': instance.artworks,
    };

BigArtworkCardListSection _$BigArtworkCardListSectionFromJson(
    Map<String, dynamic> json) {
  return BigArtworkCardListSection(
    json['title'] as String?,
    (json['artworks'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$BigArtworkCardListSectionToJson(
        BigArtworkCardListSection instance) =>
    <String, dynamic>{
      'title': instance.title,
      'artworks': instance.artworks,
    };
