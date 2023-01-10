// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_source.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsSource extends Equatable {
  final String? id;
  final String? name;
  final String? country;
  const NewsSource({
    this.id,
    this.name,
    this.country,
  });

  factory NewsSource.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceFromJson(json);
  Map<String, dynamic> toJson() => _$NewsSourceToJson(this);

  @override
  List<Object?> get props => [id, name, country];
}
