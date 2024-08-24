// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoursesResponseModel _$CoursesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CoursesResponseModel(
      courseDataList: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : CourseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoursesResponseModelToJson(
        CoursesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.courseDataList,
    };

CourseData _$CourseDataFromJson(Map<String, dynamic> json) => CourseData(
      id: (json['course-id'] as num?)?.toInt(),
      name: json['course-name'] as String?,
      image: json['course-image'] as String?,
      price: (json['course-price'] as num?)?.toInt(),
      rate: (json['course-rate'] as num?)?.toDouble(),
      duration: json['course-duration'] as String?,
      mentor: json['course-mentor'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$CourseDataToJson(CourseData instance) =>
    <String, dynamic>{
      'course-id': instance.id,
      'course-name': instance.name,
      'course-image': instance.image,
      'course-price': instance.price,
      'course-rate': instance.rate,
      'course-duration': instance.duration,
      'course-mentor': instance.mentor,
      'category': instance.category,
    };
