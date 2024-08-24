import 'package:json_annotation/json_annotation.dart';

part 'category_response_model.g.dart';

@JsonSerializable()
class CategoryResponseModel {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'msg')
  String? message;

  @JsonKey(name: 'data')
  List<CategoryData>? categoryDataList;

  CategoryResponseModel({
    this.code,
    this.message,
    this.categoryDataList,
  });

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseModelFromJson(json);
}

@JsonSerializable()
class CategoryData {
  @JsonKey(name: 'category-id')
  int? id;

  @JsonKey(name: 'category-name')
  String? name;

  @JsonKey(name: 'category-image')
  String? image;

  CategoryData({
    this.id,
    this.name,
    this.image,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}