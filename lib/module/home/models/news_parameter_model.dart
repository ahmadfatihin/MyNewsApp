import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_parameter_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsParameterModel extends Equatable {
  final String? country;
  final String? language;
  final String? q;
  final String? sortBy;
  final int? pageSize;
  final String? sources;
  const NewsParameterModel({
    this.country,
    this.language,
    this.q,
    this.sortBy,
    this.pageSize,
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
        sources,
      ];
}
