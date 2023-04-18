import 'package:drift/drift.dart';
import 'package:poc_sql_database/app/core/shared/objects/programs/data/tables/program_floor_table.dart';

import '../../../../databases/drift_database.dart';
import '../entities/program_entity.dart';

class ProgramModel extends ProgramEntity {
  ProgramModel({
    required super.id,
    required super.name,
    required super.subTitle,
    required super.nameLocale,
    required super.description,
    required super.image,
    required super.order,
    required super.parentId,
    required super.bigImage,
    required super.webSlug,
    required super.web,
    required super.hex,
    required super.defaultUi,
    required super.status,
    required super.releaseWithAds,
    required super.newProgram,
    required super.instructorId,
    required super.programType,
    required super.animation,
    required super.videoUrl,
    required super.videoUrl2,
    required super.updateAt,
  });

  factory ProgramModel.fromJson(Map<String, dynamic> json) {
    return ProgramModel(
      id: json['id'],
      name: json['name'],
      subTitle: json['sub_title'],
      nameLocale: json['name_locale'],
      description: json['description'],
      image: json['image'],
      order: json['order'],
      parentId: json['parent_id'],
      bigImage: json['big_image'],
      webSlug: json['web_slug'],
      web: json['web'],
      hex: json['hex'],
      defaultUi: json['default_ui'],
      status: json['status'],
      releaseWithAds: json['release_with_ads'],
      newProgram: json['new_program'],
      instructorId: json['instructor_id'],
      programType: json['program_type'],
      animation: json['animation'],
      videoUrl: json['video_url'],
      videoUrl2: json['video_url_2'],
      updateAt: DateTime.now(),
    );
  }

  factory ProgramModel.fromProgramData(ProgramDriftData data) {
    return ProgramModel(
      id: data.id,
      name: data.name,
      subTitle: data.subTitle,
      nameLocale: data.nameLocale,
      description: data.description,
      image: data.image,
      order: data.order,
      parentId: data.parentId,
      bigImage: data.bigImage,
      webSlug: data.webSlug,
      web: data.web,
      hex: data.hex,
      defaultUi: data.defaultUi,
      status: data.status,
      releaseWithAds: data.releaseWithAds,
      newProgram: data.newProgram,
      instructorId: data.instructorId,
      programType: data.programType,
      animation: data.animation,
      videoUrl: data.videoUrl,
      videoUrl2: data.videoUrl2,
      updateAt: data.updateAt == null ? null : DateTime.parse(data.updateAt!),
    );
  }

  factory ProgramModel.fromProgramFloor(ProgramFloor programFloor) {
    return ProgramModel(
      id: programFloor.id,
      name: programFloor.name,
      subTitle: programFloor.subTitle,
      nameLocale: programFloor.nameLocale,
      description: programFloor.description,
      image: programFloor.image,
      order: programFloor.order,
      parentId: programFloor.parentId,
      bigImage: programFloor.bigImage,
      webSlug: programFloor.webSlug,
      web: programFloor.web,
      hex: programFloor.hex,
      defaultUi: programFloor.defaultUi,
      status: programFloor.status,
      releaseWithAds: programFloor.releaseWithAds,
      newProgram: programFloor.newProgram,
      instructorId: programFloor.instructorId,
      programType: programFloor.programType,
      animation: programFloor.animation,
      videoUrl: programFloor.videoUrl,
      videoUrl2: programFloor.videoUrl2,
      updateAt: programFloor.updateAt == null
          ? null
          : DateTime.parse(programFloor.updateAt!),
    );
  }

  factory ProgramModel.fromEntity(ProgramEntity entity) {
    return ProgramModel(
      id: entity.id,
      name: entity.name,
      subTitle: entity.subTitle,
      nameLocale: entity.nameLocale,
      description: entity.description,
      image: entity.image,
      order: entity.order,
      parentId: entity.parentId,
      bigImage: entity.bigImage,
      webSlug: entity.webSlug,
      web: entity.web,
      hex: entity.hex,
      defaultUi: entity.defaultUi,
      status: entity.status,
      releaseWithAds: entity.releaseWithAds,
      newProgram: entity.newProgram,
      instructorId: entity.instructorId,
      programType: entity.programType,
      animation: entity.animation,
      videoUrl: entity.videoUrl,
      videoUrl2: entity.videoUrl2,
      updateAt: entity.updateAt,
    );
  }

  static List<ProgramModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ProgramModel.fromJson(json)).toList();
  }

  static List<ProgramModel> fromEntityList(List<ProgramEntity> entityList) {
    return entityList.map((entity) => ProgramModel.fromEntity(entity)).toList();
  }

  ProgramDriftData toData() {
    return ProgramDriftData(
      id: id,
      name: name,
      subTitle: subTitle,
      nameLocale: nameLocale,
      description: description,
      image: image,
      order: order,
      parentId: parentId,
      bigImage: bigImage,
      webSlug: webSlug,
      web: web,
      hex: hex,
      defaultUi: defaultUi,
      status: status,
      releaseWithAds: releaseWithAds,
      newProgram: newProgram,
      instructorId: instructorId,
      programType: programType,
      animation: animation,
      videoUrl: videoUrl,
      videoUrl2: videoUrl2,
      updateAt: updateAt?.toIso8601String(),
    );
  }

  ProgramDriftCompanion toCompanion() {
    return ProgramDriftCompanion(
      id: Value(id),
      name: Value(name),
      subTitle: Value(subTitle),
      nameLocale: Value(nameLocale),
      description: Value(description),
      image: Value(image),
      order: Value(order),
      parentId: Value(parentId),
      bigImage: Value(bigImage),
      webSlug: Value(webSlug),
      web: Value(web),
      hex: Value(hex),
      defaultUi: Value(defaultUi),
      status: Value(status),
      releaseWithAds: Value(releaseWithAds),
      newProgram: Value(newProgram),
      instructorId:
          instructorId == null ? const Value.absent() : Value(instructorId),
      programType: Value(programType),
      animation: animation == null ? const Value.absent() : Value(animation),
      videoUrl: videoUrl == null ? const Value.absent() : Value(videoUrl),
      videoUrl2: videoUrl2 == null ? const Value.absent() : Value(videoUrl2),
      updateAt: updateAt == null
          ? const Value.absent()
          : Value(updateAt!.toIso8601String()),
    );
  }

  ProgramFloor toFloor() {
    return ProgramFloor(
      id: id,
      name: name,
      subTitle: subTitle,
      nameLocale: nameLocale,
      description: description,
      image: image,
      order: order,
      parentId: parentId,
      bigImage: bigImage,
      webSlug: webSlug,
      web: web,
      hex: hex,
      defaultUi: defaultUi,
      status: status,
      releaseWithAds: releaseWithAds,
      newProgram: newProgram,
      instructorId: instructorId,
      programType: programType,
      animation: animation,
      videoUrl: videoUrl,
      videoUrl2: videoUrl2,
      updateAt: updateAt?.toIso8601String(),
    );
  }
}
