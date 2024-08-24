// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponseModel _$CategoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    CategoryResponseModel(
      code: (json['code'] as num?)?.toInt(),
      message: json['msg'] as String?,
      categoryDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryResponseModelToJson(
        CategoryResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.message,
      'data': instance.categoryDataList,
    };

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) => CategoryData(
      id: (json['category-id'] as num?)?.toInt(),
      name: json['category-name'] as String?,
      image: json['category-image'] as String?,
    );

Map<String, dynamic> _$CategoryDataToJson(CategoryData instance) =>
    <String, dynamic>{
      'category-id': instance.id,
      'category-name': instance.name,
      'category-image': instance.image,
    };
