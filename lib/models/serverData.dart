
class ResultData {
  final int resultcode;
  final String reason;
  final Map<String,dynamic>? result;

  ResultData(this.resultcode,this.reason,this.result);

   ResultData.fromJson(Map<String, dynamic> json):
     resultcode = json["resultcode"],
     reason =json["reason"],
     result = json["result"];

   Map<String, dynamic>toJson(){
      if(null == result){
       return <String, dynamic>{
          'resultcode': resultcode,
          'reason': reason,
        };
      }
      return <String, dynamic>{
        'resultcode': resultcode,
        'reason': reason,
        "result": result!
      };

  }

}