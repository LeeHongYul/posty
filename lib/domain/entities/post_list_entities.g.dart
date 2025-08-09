// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListEntitiesImpl _$$PostListEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$PostListEntitiesImpl(
      postList: (json['postList'] as List<dynamic>?)
              ?.map((e) => PostEntities.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PostEntities>[],
    );

Map<String, dynamic> _$$PostListEntitiesImplToJson(
        _$PostListEntitiesImpl instance) =>
    <String, dynamic>{
      'postList': instance.postList,
    };
