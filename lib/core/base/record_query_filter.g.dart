// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordQueryFilter _$RecordQueryFilterFromJson(Map<String, dynamic> json) =>
    RecordQueryFilter(
      field: json['field'] as String?,
      value: json['value'] as String?,
      fieldOperator: json['operator'] as String?,
    );

Map<String, dynamic> _$RecordQueryFilterToJson(RecordQueryFilter instance) =>
    <String, dynamic>{
      'field': instance.field,
      'value': instance.value,
      'operator': instance.fieldOperator,
    };
