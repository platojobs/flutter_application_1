import 'package:json_annotation/json_annotation.dart';
part 'expressFromId.g.dart';

@JsonSerializable()
class ExpressFromId {
  @JsonKey(name: 'showapi_res_error')
  final String? showapiResError;
  @JsonKey(name: 'showapi_res_code')
  final int? showapiResCode;
  @JsonKey(name: 'showapi_res_id')
  final String? showapiResId;
  @JsonKey(name: 'showapi_res_body')
  final ShowapiResBody? showapiResBody;

  ExpressFromId({
    this.showapiResError,
    this.showapiResCode,
    this.showapiResId,
    this.showapiResBody,
  });

  factory ExpressFromId.fromJson(Map<String, dynamic> json) =>
      _$ExpressFromIdFromJson(json);

  Map<String, dynamic> toJson() => _$ExpressFromIdToJson(this);

}

@JsonSerializable()
class ShowapiResBody {
  @JsonKey(name: 'ret_code')
  final int? retCode;
  final List<Datum>? data;
  final String? msg;

  ShowapiResBody({
    this.retCode,
    this.data,
    this.msg,
  });

  factory ShowapiResBody.fromJson(Map<String, dynamic> json) =>
      _$ShowapiResBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ShowapiResBodyToJson(this);
}

@JsonSerializable()
class Datum {

  final String? imgUrl;
  final String? phone;
  final String? com;
  @JsonKey(name: 'com_name')
  final String? comName;
  final String? url;

  Datum({
    this.imgUrl,
    this.phone,
    this.com,
    this.comName,
    this.url,
  });
  factory Datum.fromJson(Map<String, dynamic> json) =>
      _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

}
