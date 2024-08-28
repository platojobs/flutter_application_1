import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

/*
{
 "name":"zhangsan",
 "age": 18,
 "isVip": true
}

 */


@JsonSerializable()
class User{
  final String name;
  final int age;
  final bool isVip;
  User({required this.name,required this.age,required this.isVip});
  // 从JSON创建User实例的工厂方法
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  // 将User实例转换为JSON的方法
  Map<String, dynamic> toJson() => _$UserToJson(this);
}