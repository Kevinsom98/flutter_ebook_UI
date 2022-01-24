// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordQuery _$RecordQueryFromJson(Map<String, dynamic> json) => RecordQuery(
      start: json['start'] as int?,
      limit: json['limit'] as int?,
      total: json['total'] as int?,
      filterBy: (json['filter_by'] as List<dynamic>?)
          ?.map((e) => RecordQueryFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecordQueryToJson(RecordQuery instance) =>
    <String, dynamic>{
      'start': instance.start,
      'limit': instance.limit,
      'total': instance.total,
      'filter_by': instance.filterBy,
    };
