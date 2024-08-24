import 'package:json_annotation/json_annotation.dart';

part 'courses_response_model.g.dart';

@JsonSerializable()
class CoursesResponseModel {
  @JsonKey(name: 'data')
  List<CourseData?>? courseDataList;

  CoursesResponseModel({
    this.courseDataList,
  });

  factory CoursesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseModelFromJson(json);
}

@JsonSerializable()
class CourseData {
  @JsonKey(name: 'course-id')
  int? id;

  @JsonKey(name: 'course-name')
  String? name;

  @JsonKey(name: 'course-image')
  String? image;

  @JsonKey(name: 'course-price')
  int? price;

  @JsonKey(name: 'course-rate')
  double? rate;

  @JsonKey(name: 'course-duration')
  String? duration;

  @JsonKey(name: 'course-mentor')
  String? mentor;

  String? category;

  CourseData({
    this.id,
    this.name,
    this.image,
    this.price,
    this.rate,
    this.duration,
    this.mentor,
    this.category,
  });

  factory CourseData.fromJson(Map<String, dynamic> json) =>
      _$CourseDataFromJson(json);
}