// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expressFromId.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpressFromId _$ExpressFromIdFromJson(Map<String, dynamic> json) =>
    ExpressFromId(
      showapiResError: json['showapi_res_error'] as String?,
      showapiResCode: (json['showapi_res_code'] as num?)?.toInt(),
      showapiResId: json['showapi_res_id'] as String?,
      showapiResBody: json['showapi_res_body'] == null
          ? null
          : ShowapiResBody.fromJson(
              json['showapi_res_body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExpressFromIdToJson(ExpressFromId instance) =>
    <String, dynamic>{
      'showapi_res_error': instance.showapiResError,
      'showapi_res_code': instance.showapiResCode,
      'showapi_res_id': instance.showapiResId,
      'showapi_res_body': instance.showapiResBody,
    };

ShowapiResBody _$ShowapiResBodyFromJson(Map<String, dynamic> json) =>
    ShowapiResBody(
      retCode: (json['ret_code'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$ShowapiResBodyToJson(ShowapiResBody instance) =>
    <String, dynamic>{
      'ret_code': instance.retCode,
      'data': instance.data,
      'msg': instance.msg,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      imgUrl: json['imgUrl'] as String?,
      phone: json['phone'] as String?,
      com: json['com'] as String?,
      comName: json['com_name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'imgUrl': instance.imgUrl,
      'phone': instance.phone,
      'com': instance.com,
      'com_name': instance.comName,
      'url': instance.url,
    };
