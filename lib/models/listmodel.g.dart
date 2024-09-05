// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveListData _$LiveListDataFromJson(Map<String, dynamic> json) => LiveListData()
  ..pageSize = (json['pageSize'] as num).toInt()
  ..pageNo = (json['pageNo'] as num).toInt()
  ..rows = (json['rows'] as List<dynamic>)
      .map((e) => LiveListDataRows.fromJson(e as Map<String, dynamic>))
      .toList()
  ..total = (json['total'] as num).toInt();

Map<String, dynamic> _$LiveListDataToJson(LiveListData instance) =>
    <String, dynamic>{
      'pageSize': instance.pageSize,
      'pageNo': instance.pageNo,
      'rows': instance.rows,
      'total': instance.total,
    };

LiveListDataRows _$LiveListDataRowsFromJson(Map<String, dynamic> json) =>
    LiveListDataRows()
      ..name = json['name'] as String
      ..sex = json['sex'] as String
      ..age = (json['age'] as num).toInt();

Map<String, dynamic> _$LiveListDataRowsToJson(LiveListDataRows instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sex': instance.sex,
      'age': instance.age,
    };
