import 'package:floor/floor.dart';

@entity
class ProgramFloor {
  @primaryKey
  final int id;
  final String name;
  final String subTitle;
  final String nameLocale;
  final String description;
  final String image;
  final int order;
  final int parentId;
  final String bigImage;
  final String webSlug;
  final int web;
  final String hex;
  final int defaultUi;
  final int status;
  final int releaseWithAds;
  final int newProgram;
  final int? instructorId;
  final String programType;
  final String? animation;
  final String? videoUrl;
  final String? videoUrl2;
  final String? updateAt;

  ProgramFloor({
    required this.id,
    required this.name,
    required this.subTitle,
    required this.nameLocale,
    required this.description,
    required this.image,
    required this.order,
    required this.parentId,
    required this.bigImage,
    required this.webSlug,
    required this.web,
    required this.hex,
    required this.defaultUi,
    required this.status,
    required this.releaseWithAds,
    required this.newProgram,
    required this.instructorId,
    required this.programType,
    required this.animation,
    required this.videoUrl,
    required this.videoUrl2,
    required this.updateAt,
  });
}
