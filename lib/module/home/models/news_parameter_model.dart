import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_parameter_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsParameterModel extends Equatable {
  String? country;
  String? language;
  String? q;
  String? sortBy;
  int? pageSize;
  int? page;
  String? sources;
  NewsParameterModel({
    this.country,
    this.language,
    this.q,
    this.sortBy,
    this.pageSize,
    this.page,
    this.sources,
  });

  factory NewsParameterModel.fromJson(Map<String, dynamic> json) =>
      _$NewsParameterModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsParameterModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        country,
        language,
        q,
        sortBy,
        pageSize,
        page,
        sources,
      ];
}
