import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mynewsapp/services/rest_api_services/models/api_response_model.dart';

part 'news_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsModel extends Equatable with Serializable {
  final String? author;
  final String? title;
  final String? description;
  final String? urlImage;
  final String? publishedAt;
  final String? content;
  const NewsModel({
    this.author,
    this.title,
    this.description,
    this.urlImage,
    this.publishedAt,
    this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsModelToJson(this);

  @override
  List<Object?> get props =>
      [author, title, description, urlImage, publishedAt, content];
}
