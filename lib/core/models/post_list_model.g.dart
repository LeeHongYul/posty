// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListModelImpl _$$PostListModelImplFromJson(Map<String, dynamic> json) =>
    _$PostListModelImpl(
      postList: (json['postList'] as List<dynamic>?)
              ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PostModel>[],
    );

Map<String, dynamic> _$$PostListModelImplToJson(_$PostListModelImpl instance) =>
    <String, dynamic>{
      'postList': instance.postList,
    };
