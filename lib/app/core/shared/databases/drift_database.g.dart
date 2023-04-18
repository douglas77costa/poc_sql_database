// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $ProgramDriftTable extends ProgramDrift
    with TableInfo<$ProgramDriftTable, ProgramDriftData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProgramDriftTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subTitleMeta =
      const VerificationMeta('subTitle');
  @override
  late final GeneratedColumn<String> subTitle = GeneratedColumn<String>(
      'sub_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameLocaleMeta =
      const VerificationMeta('nameLocale');
  @override
  late final GeneratedColumn<String> nameLocale = GeneratedColumn<String>(
      'name_locale', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<int> parentId = GeneratedColumn<int>(
      'parent_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bigImageMeta =
      const VerificationMeta('bigImage');
  @override
  late final GeneratedColumn<String> bigImage = GeneratedColumn<String>(
      'big_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _webSlugMeta =
      const VerificationMeta('webSlug');
  @override
  late final GeneratedColumn<String> webSlug = GeneratedColumn<String>(
      'web_slug', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _webMeta = const VerificationMeta('web');
  @override
  late final GeneratedColumn<int> web = GeneratedColumn<int>(
      'web', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hexMeta = const VerificationMeta('hex');
  @override
  late final GeneratedColumn<String> hex = GeneratedColumn<String>(
      'hex', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _defaultUiMeta =
      const VerificationMeta('defaultUi');
  @override
  late final GeneratedColumn<int> defaultUi = GeneratedColumn<int>(
      'default_ui', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _releaseWithAdsMeta =
      const VerificationMeta('releaseWithAds');
  @override
  late final GeneratedColumn<int> releaseWithAds = GeneratedColumn<int>(
      'release_with_ads', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _newProgramMeta =
      const VerificationMeta('newProgram');
  @override
  late final GeneratedColumn<int> newProgram = GeneratedColumn<int>(
      'new_program', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _instructorIdMeta =
      const VerificationMeta('instructorId');
  @override
  late final GeneratedColumn<int> instructorId = GeneratedColumn<int>(
      'instructor_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _programTypeMeta =
      const VerificationMeta('programType');
  @override
  late final GeneratedColumn<String> programType = GeneratedColumn<String>(
      'program_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _animationMeta =
      const VerificationMeta('animation');
  @override
  late final GeneratedColumn<String> animation = GeneratedColumn<String>(
      'animation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _videoUrlMeta =
      const VerificationMeta('videoUrl');
  @override
  late final GeneratedColumn<String> videoUrl = GeneratedColumn<String>(
      'video_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _videoUrl2Meta =
      const VerificationMeta('videoUrl2');
  @override
  late final GeneratedColumn<String> videoUrl2 = GeneratedColumn<String>(
      'video_url2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updateAtMeta =
      const VerificationMeta('updateAt');
  @override
  late final GeneratedColumn<String> updateAt = GeneratedColumn<String>(
      'update_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        subTitle,
        nameLocale,
        description,
        image,
        order,
        parentId,
        bigImage,
        webSlug,
        web,
        hex,
        defaultUi,
        status,
        releaseWithAds,
        newProgram,
        instructorId,
        programType,
        animation,
        videoUrl,
        videoUrl2,
        updateAt
      ];
  @override
  String get aliasedName => _alias ?? 'program_drift';
  @override
  String get actualTableName => 'program_drift';
  @override
  VerificationContext validateIntegrity(Insertable<ProgramDriftData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sub_title')) {
      context.handle(_subTitleMeta,
          subTitle.isAcceptableOrUnknown(data['sub_title']!, _subTitleMeta));
    } else if (isInserting) {
      context.missing(_subTitleMeta);
    }
    if (data.containsKey('name_locale')) {
      context.handle(
          _nameLocaleMeta,
          nameLocale.isAcceptableOrUnknown(
              data['name_locale']!, _nameLocaleMeta));
    } else if (isInserting) {
      context.missing(_nameLocaleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    } else if (isInserting) {
      context.missing(_parentIdMeta);
    }
    if (data.containsKey('big_image')) {
      context.handle(_bigImageMeta,
          bigImage.isAcceptableOrUnknown(data['big_image']!, _bigImageMeta));
    } else if (isInserting) {
      context.missing(_bigImageMeta);
    }
    if (data.containsKey('web_slug')) {
      context.handle(_webSlugMeta,
          webSlug.isAcceptableOrUnknown(data['web_slug']!, _webSlugMeta));
    } else if (isInserting) {
      context.missing(_webSlugMeta);
    }
    if (data.containsKey('web')) {
      context.handle(
          _webMeta, web.isAcceptableOrUnknown(data['web']!, _webMeta));
    } else if (isInserting) {
      context.missing(_webMeta);
    }
    if (data.containsKey('hex')) {
      context.handle(
          _hexMeta, hex.isAcceptableOrUnknown(data['hex']!, _hexMeta));
    } else if (isInserting) {
      context.missing(_hexMeta);
    }
    if (data.containsKey('default_ui')) {
      context.handle(_defaultUiMeta,
          defaultUi.isAcceptableOrUnknown(data['default_ui']!, _defaultUiMeta));
    } else if (isInserting) {
      context.missing(_defaultUiMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('release_with_ads')) {
      context.handle(
          _releaseWithAdsMeta,
          releaseWithAds.isAcceptableOrUnknown(
              data['release_with_ads']!, _releaseWithAdsMeta));
    } else if (isInserting) {
      context.missing(_releaseWithAdsMeta);
    }
    if (data.containsKey('new_program')) {
      context.handle(
          _newProgramMeta,
          newProgram.isAcceptableOrUnknown(
              data['new_program']!, _newProgramMeta));
    } else if (isInserting) {
      context.missing(_newProgramMeta);
    }
    if (data.containsKey('instructor_id')) {
      context.handle(
          _instructorIdMeta,
          instructorId.isAcceptableOrUnknown(
              data['instructor_id']!, _instructorIdMeta));
    }
    if (data.containsKey('program_type')) {
      context.handle(
          _programTypeMeta,
          programType.isAcceptableOrUnknown(
              data['program_type']!, _programTypeMeta));
    } else if (isInserting) {
      context.missing(_programTypeMeta);
    }
    if (data.containsKey('animation')) {
      context.handle(_animationMeta,
          animation.isAcceptableOrUnknown(data['animation']!, _animationMeta));
    }
    if (data.containsKey('video_url')) {
      context.handle(_videoUrlMeta,
          videoUrl.isAcceptableOrUnknown(data['video_url']!, _videoUrlMeta));
    }
    if (data.containsKey('video_url2')) {
      context.handle(_videoUrl2Meta,
          videoUrl2.isAcceptableOrUnknown(data['video_url2']!, _videoUrl2Meta));
    }
    if (data.containsKey('update_at')) {
      context.handle(_updateAtMeta,
          updateAt.isAcceptableOrUnknown(data['update_at']!, _updateAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProgramDriftData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProgramDriftData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      subTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_title'])!,
      nameLocale: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_locale'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order'])!,
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent_id'])!,
      bigImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}big_image'])!,
      webSlug: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}web_slug'])!,
      web: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}web'])!,
      hex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hex'])!,
      defaultUi: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}default_ui'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      releaseWithAds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}release_with_ads'])!,
      newProgram: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}new_program'])!,
      instructorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}instructor_id']),
      programType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}program_type'])!,
      animation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}animation']),
      videoUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}video_url']),
      videoUrl2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}video_url2']),
      updateAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}update_at']),
    );
  }

  @override
  $ProgramDriftTable createAlias(String alias) {
    return $ProgramDriftTable(attachedDatabase, alias);
  }
}

class ProgramDriftData extends DataClass
    implements Insertable<ProgramDriftData> {
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
  const ProgramDriftData(
      {required this.id,
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
      this.instructorId,
      required this.programType,
      this.animation,
      this.videoUrl,
      this.videoUrl2,
      this.updateAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['sub_title'] = Variable<String>(subTitle);
    map['name_locale'] = Variable<String>(nameLocale);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    map['order'] = Variable<int>(order);
    map['parent_id'] = Variable<int>(parentId);
    map['big_image'] = Variable<String>(bigImage);
    map['web_slug'] = Variable<String>(webSlug);
    map['web'] = Variable<int>(web);
    map['hex'] = Variable<String>(hex);
    map['default_ui'] = Variable<int>(defaultUi);
    map['status'] = Variable<int>(status);
    map['release_with_ads'] = Variable<int>(releaseWithAds);
    map['new_program'] = Variable<int>(newProgram);
    if (!nullToAbsent || instructorId != null) {
      map['instructor_id'] = Variable<int>(instructorId);
    }
    map['program_type'] = Variable<String>(programType);
    if (!nullToAbsent || animation != null) {
      map['animation'] = Variable<String>(animation);
    }
    if (!nullToAbsent || videoUrl != null) {
      map['video_url'] = Variable<String>(videoUrl);
    }
    if (!nullToAbsent || videoUrl2 != null) {
      map['video_url2'] = Variable<String>(videoUrl2);
    }
    if (!nullToAbsent || updateAt != null) {
      map['update_at'] = Variable<String>(updateAt);
    }
    return map;
  }

  ProgramDriftCompanion toCompanion(bool nullToAbsent) {
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
      instructorId: instructorId == null && nullToAbsent
          ? const Value.absent()
          : Value(instructorId),
      programType: Value(programType),
      animation: animation == null && nullToAbsent
          ? const Value.absent()
          : Value(animation),
      videoUrl: videoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(videoUrl),
      videoUrl2: videoUrl2 == null && nullToAbsent
          ? const Value.absent()
          : Value(videoUrl2),
      updateAt: updateAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updateAt),
    );
  }

  factory ProgramDriftData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProgramDriftData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      subTitle: serializer.fromJson<String>(json['subTitle']),
      nameLocale: serializer.fromJson<String>(json['nameLocale']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      order: serializer.fromJson<int>(json['order']),
      parentId: serializer.fromJson<int>(json['parentId']),
      bigImage: serializer.fromJson<String>(json['bigImage']),
      webSlug: serializer.fromJson<String>(json['webSlug']),
      web: serializer.fromJson<int>(json['web']),
      hex: serializer.fromJson<String>(json['hex']),
      defaultUi: serializer.fromJson<int>(json['defaultUi']),
      status: serializer.fromJson<int>(json['status']),
      releaseWithAds: serializer.fromJson<int>(json['releaseWithAds']),
      newProgram: serializer.fromJson<int>(json['newProgram']),
      instructorId: serializer.fromJson<int?>(json['instructorId']),
      programType: serializer.fromJson<String>(json['programType']),
      animation: serializer.fromJson<String?>(json['animation']),
      videoUrl: serializer.fromJson<String?>(json['videoUrl']),
      videoUrl2: serializer.fromJson<String?>(json['videoUrl2']),
      updateAt: serializer.fromJson<String?>(json['updateAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'subTitle': serializer.toJson<String>(subTitle),
      'nameLocale': serializer.toJson<String>(nameLocale),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
      'order': serializer.toJson<int>(order),
      'parentId': serializer.toJson<int>(parentId),
      'bigImage': serializer.toJson<String>(bigImage),
      'webSlug': serializer.toJson<String>(webSlug),
      'web': serializer.toJson<int>(web),
      'hex': serializer.toJson<String>(hex),
      'defaultUi': serializer.toJson<int>(defaultUi),
      'status': serializer.toJson<int>(status),
      'releaseWithAds': serializer.toJson<int>(releaseWithAds),
      'newProgram': serializer.toJson<int>(newProgram),
      'instructorId': serializer.toJson<int?>(instructorId),
      'programType': serializer.toJson<String>(programType),
      'animation': serializer.toJson<String?>(animation),
      'videoUrl': serializer.toJson<String?>(videoUrl),
      'videoUrl2': serializer.toJson<String?>(videoUrl2),
      'updateAt': serializer.toJson<String?>(updateAt),
    };
  }

  ProgramDriftData copyWith(
          {int? id,
          String? name,
          String? subTitle,
          String? nameLocale,
          String? description,
          String? image,
          int? order,
          int? parentId,
          String? bigImage,
          String? webSlug,
          int? web,
          String? hex,
          int? defaultUi,
          int? status,
          int? releaseWithAds,
          int? newProgram,
          Value<int?> instructorId = const Value.absent(),
          String? programType,
          Value<String?> animation = const Value.absent(),
          Value<String?> videoUrl = const Value.absent(),
          Value<String?> videoUrl2 = const Value.absent(),
          Value<String?> updateAt = const Value.absent()}) =>
      ProgramDriftData(
        id: id ?? this.id,
        name: name ?? this.name,
        subTitle: subTitle ?? this.subTitle,
        nameLocale: nameLocale ?? this.nameLocale,
        description: description ?? this.description,
        image: image ?? this.image,
        order: order ?? this.order,
        parentId: parentId ?? this.parentId,
        bigImage: bigImage ?? this.bigImage,
        webSlug: webSlug ?? this.webSlug,
        web: web ?? this.web,
        hex: hex ?? this.hex,
        defaultUi: defaultUi ?? this.defaultUi,
        status: status ?? this.status,
        releaseWithAds: releaseWithAds ?? this.releaseWithAds,
        newProgram: newProgram ?? this.newProgram,
        instructorId:
            instructorId.present ? instructorId.value : this.instructorId,
        programType: programType ?? this.programType,
        animation: animation.present ? animation.value : this.animation,
        videoUrl: videoUrl.present ? videoUrl.value : this.videoUrl,
        videoUrl2: videoUrl2.present ? videoUrl2.value : this.videoUrl2,
        updateAt: updateAt.present ? updateAt.value : this.updateAt,
      );
  @override
  String toString() {
    return (StringBuffer('ProgramDriftData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subTitle: $subTitle, ')
          ..write('nameLocale: $nameLocale, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('order: $order, ')
          ..write('parentId: $parentId, ')
          ..write('bigImage: $bigImage, ')
          ..write('webSlug: $webSlug, ')
          ..write('web: $web, ')
          ..write('hex: $hex, ')
          ..write('defaultUi: $defaultUi, ')
          ..write('status: $status, ')
          ..write('releaseWithAds: $releaseWithAds, ')
          ..write('newProgram: $newProgram, ')
          ..write('instructorId: $instructorId, ')
          ..write('programType: $programType, ')
          ..write('animation: $animation, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('videoUrl2: $videoUrl2, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        subTitle,
        nameLocale,
        description,
        image,
        order,
        parentId,
        bigImage,
        webSlug,
        web,
        hex,
        defaultUi,
        status,
        releaseWithAds,
        newProgram,
        instructorId,
        programType,
        animation,
        videoUrl,
        videoUrl2,
        updateAt
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProgramDriftData &&
          other.id == this.id &&
          other.name == this.name &&
          other.subTitle == this.subTitle &&
          other.nameLocale == this.nameLocale &&
          other.description == this.description &&
          other.image == this.image &&
          other.order == this.order &&
          other.parentId == this.parentId &&
          other.bigImage == this.bigImage &&
          other.webSlug == this.webSlug &&
          other.web == this.web &&
          other.hex == this.hex &&
          other.defaultUi == this.defaultUi &&
          other.status == this.status &&
          other.releaseWithAds == this.releaseWithAds &&
          other.newProgram == this.newProgram &&
          other.instructorId == this.instructorId &&
          other.programType == this.programType &&
          other.animation == this.animation &&
          other.videoUrl == this.videoUrl &&
          other.videoUrl2 == this.videoUrl2 &&
          other.updateAt == this.updateAt);
}

class ProgramDriftCompanion extends UpdateCompanion<ProgramDriftData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> subTitle;
  final Value<String> nameLocale;
  final Value<String> description;
  final Value<String> image;
  final Value<int> order;
  final Value<int> parentId;
  final Value<String> bigImage;
  final Value<String> webSlug;
  final Value<int> web;
  final Value<String> hex;
  final Value<int> defaultUi;
  final Value<int> status;
  final Value<int> releaseWithAds;
  final Value<int> newProgram;
  final Value<int?> instructorId;
  final Value<String> programType;
  final Value<String?> animation;
  final Value<String?> videoUrl;
  final Value<String?> videoUrl2;
  final Value<String?> updateAt;
  const ProgramDriftCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.subTitle = const Value.absent(),
    this.nameLocale = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.order = const Value.absent(),
    this.parentId = const Value.absent(),
    this.bigImage = const Value.absent(),
    this.webSlug = const Value.absent(),
    this.web = const Value.absent(),
    this.hex = const Value.absent(),
    this.defaultUi = const Value.absent(),
    this.status = const Value.absent(),
    this.releaseWithAds = const Value.absent(),
    this.newProgram = const Value.absent(),
    this.instructorId = const Value.absent(),
    this.programType = const Value.absent(),
    this.animation = const Value.absent(),
    this.videoUrl = const Value.absent(),
    this.videoUrl2 = const Value.absent(),
    this.updateAt = const Value.absent(),
  });
  ProgramDriftCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String subTitle,
    required String nameLocale,
    required String description,
    required String image,
    required int order,
    required int parentId,
    required String bigImage,
    required String webSlug,
    required int web,
    required String hex,
    required int defaultUi,
    required int status,
    required int releaseWithAds,
    required int newProgram,
    this.instructorId = const Value.absent(),
    required String programType,
    this.animation = const Value.absent(),
    this.videoUrl = const Value.absent(),
    this.videoUrl2 = const Value.absent(),
    this.updateAt = const Value.absent(),
  })  : name = Value(name),
        subTitle = Value(subTitle),
        nameLocale = Value(nameLocale),
        description = Value(description),
        image = Value(image),
        order = Value(order),
        parentId = Value(parentId),
        bigImage = Value(bigImage),
        webSlug = Value(webSlug),
        web = Value(web),
        hex = Value(hex),
        defaultUi = Value(defaultUi),
        status = Value(status),
        releaseWithAds = Value(releaseWithAds),
        newProgram = Value(newProgram),
        programType = Value(programType);
  static Insertable<ProgramDriftData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? subTitle,
    Expression<String>? nameLocale,
    Expression<String>? description,
    Expression<String>? image,
    Expression<int>? order,
    Expression<int>? parentId,
    Expression<String>? bigImage,
    Expression<String>? webSlug,
    Expression<int>? web,
    Expression<String>? hex,
    Expression<int>? defaultUi,
    Expression<int>? status,
    Expression<int>? releaseWithAds,
    Expression<int>? newProgram,
    Expression<int>? instructorId,
    Expression<String>? programType,
    Expression<String>? animation,
    Expression<String>? videoUrl,
    Expression<String>? videoUrl2,
    Expression<String>? updateAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (subTitle != null) 'sub_title': subTitle,
      if (nameLocale != null) 'name_locale': nameLocale,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (order != null) 'order': order,
      if (parentId != null) 'parent_id': parentId,
      if (bigImage != null) 'big_image': bigImage,
      if (webSlug != null) 'web_slug': webSlug,
      if (web != null) 'web': web,
      if (hex != null) 'hex': hex,
      if (defaultUi != null) 'default_ui': defaultUi,
      if (status != null) 'status': status,
      if (releaseWithAds != null) 'release_with_ads': releaseWithAds,
      if (newProgram != null) 'new_program': newProgram,
      if (instructorId != null) 'instructor_id': instructorId,
      if (programType != null) 'program_type': programType,
      if (animation != null) 'animation': animation,
      if (videoUrl != null) 'video_url': videoUrl,
      if (videoUrl2 != null) 'video_url2': videoUrl2,
      if (updateAt != null) 'update_at': updateAt,
    });
  }

  ProgramDriftCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? subTitle,
      Value<String>? nameLocale,
      Value<String>? description,
      Value<String>? image,
      Value<int>? order,
      Value<int>? parentId,
      Value<String>? bigImage,
      Value<String>? webSlug,
      Value<int>? web,
      Value<String>? hex,
      Value<int>? defaultUi,
      Value<int>? status,
      Value<int>? releaseWithAds,
      Value<int>? newProgram,
      Value<int?>? instructorId,
      Value<String>? programType,
      Value<String?>? animation,
      Value<String?>? videoUrl,
      Value<String?>? videoUrl2,
      Value<String?>? updateAt}) {
    return ProgramDriftCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      subTitle: subTitle ?? this.subTitle,
      nameLocale: nameLocale ?? this.nameLocale,
      description: description ?? this.description,
      image: image ?? this.image,
      order: order ?? this.order,
      parentId: parentId ?? this.parentId,
      bigImage: bigImage ?? this.bigImage,
      webSlug: webSlug ?? this.webSlug,
      web: web ?? this.web,
      hex: hex ?? this.hex,
      defaultUi: defaultUi ?? this.defaultUi,
      status: status ?? this.status,
      releaseWithAds: releaseWithAds ?? this.releaseWithAds,
      newProgram: newProgram ?? this.newProgram,
      instructorId: instructorId ?? this.instructorId,
      programType: programType ?? this.programType,
      animation: animation ?? this.animation,
      videoUrl: videoUrl ?? this.videoUrl,
      videoUrl2: videoUrl2 ?? this.videoUrl2,
      updateAt: updateAt ?? this.updateAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (subTitle.present) {
      map['sub_title'] = Variable<String>(subTitle.value);
    }
    if (nameLocale.present) {
      map['name_locale'] = Variable<String>(nameLocale.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (bigImage.present) {
      map['big_image'] = Variable<String>(bigImage.value);
    }
    if (webSlug.present) {
      map['web_slug'] = Variable<String>(webSlug.value);
    }
    if (web.present) {
      map['web'] = Variable<int>(web.value);
    }
    if (hex.present) {
      map['hex'] = Variable<String>(hex.value);
    }
    if (defaultUi.present) {
      map['default_ui'] = Variable<int>(defaultUi.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (releaseWithAds.present) {
      map['release_with_ads'] = Variable<int>(releaseWithAds.value);
    }
    if (newProgram.present) {
      map['new_program'] = Variable<int>(newProgram.value);
    }
    if (instructorId.present) {
      map['instructor_id'] = Variable<int>(instructorId.value);
    }
    if (programType.present) {
      map['program_type'] = Variable<String>(programType.value);
    }
    if (animation.present) {
      map['animation'] = Variable<String>(animation.value);
    }
    if (videoUrl.present) {
      map['video_url'] = Variable<String>(videoUrl.value);
    }
    if (videoUrl2.present) {
      map['video_url2'] = Variable<String>(videoUrl2.value);
    }
    if (updateAt.present) {
      map['update_at'] = Variable<String>(updateAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProgramDriftCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subTitle: $subTitle, ')
          ..write('nameLocale: $nameLocale, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('order: $order, ')
          ..write('parentId: $parentId, ')
          ..write('bigImage: $bigImage, ')
          ..write('webSlug: $webSlug, ')
          ..write('web: $web, ')
          ..write('hex: $hex, ')
          ..write('defaultUi: $defaultUi, ')
          ..write('status: $status, ')
          ..write('releaseWithAds: $releaseWithAds, ')
          ..write('newProgram: $newProgram, ')
          ..write('instructorId: $instructorId, ')
          ..write('programType: $programType, ')
          ..write('animation: $animation, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('videoUrl2: $videoUrl2, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $ProgramDriftTable programDrift = $ProgramDriftTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [programDrift];
}
