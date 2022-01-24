
import 'package:json_annotation/json_annotation.dart';

import 'record_query_filter.dart';

part 'record_query.g.dart';

@JsonSerializable()
class RecordQuery {
  static const int DEFAULT_LIMIT = 15;

  int? start = 0;
  int? limit = DEFAULT_LIMIT;
  int? total = 0;
  @JsonKey(name: 'filter_by')
  List<RecordQueryFilter>? filterBy;

  RecordQuery({
    this.start,
    this.limit,
    this.total,
    this.filterBy,
  });

  void reset() {
    this.start = 0;
    this.limit = DEFAULT_LIMIT;
    this.total = 0;
  }

  factory RecordQuery.fromJson(Map<String, dynamic> json) => _$RecordQueryFromJson(json);
  Map<String, dynamic> toJson() => _$RecordQueryToJson(this);
}