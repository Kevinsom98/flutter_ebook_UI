import 'package:json_annotation/json_annotation.dart';

part 'record_query_filter.g.dart';

@JsonSerializable()
class RecordQueryFilter {

  String? field;
  String? value;
  @JsonKey(name: 'operator')
  String? fieldOperator;

  RecordQueryFilter({
    this.field,
    this.value,
    this.fieldOperator
  });

  factory RecordQueryFilter.fromJson(Map<String, dynamic> json) => _$RecordQueryFilterFromJson(json);
  Map<String, dynamic> toJson() => _$RecordQueryFilterToJson(this);
}