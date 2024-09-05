
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'listmodel.g.dart';
@JsonSerializable()
class LiveListData {
  late int pageSize;
  late int pageNo;
  late List<LiveListDataRows> rows;
  late int total;

  LiveListData();

// 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory LiveListData.fromJson(Map<String, dynamic> json) =>
      _$LiveListDataFromJson(json);

  Map<String, dynamic> toJson() => _$LiveListDataToJson(this);

  LiveListData copyWith(
      {int? pageSize, int? pageNo, List<LiveListDataRows>? rows, int? total}) {
    return LiveListData()
      ..pageSize = pageSize ?? this.pageSize
      ..pageNo = pageNo ?? this.pageNo
      ..rows = rows ?? this.rows
      ..total = total ?? this.total;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LiveListDataRows {
    late String name;
    late String sex;
    late int age;
    LiveListDataRows();
    factory LiveListDataRows.fromJson(Map<String, dynamic> json) =>
        _$LiveListDataRowsFromJson(json);

    Map<String, dynamic> toJson() => _$LiveListDataRowsToJson(this);
}