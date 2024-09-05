import 'package:dio/dio.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "en";
const String TOKEN = "Bearer token";
const String BASE_URL = "https://wpapi.ducafecat.tech";

class PJDioNetWorking {
  static final _sharedInstance = PJDioNetWorking._shared();
  factory PJDioNetWorking() => _sharedInstance;
  late Dio _dio;
  PJDioNetWorking._shared() {
    var options = BaseOptions(
      baseUrl: BASE_URL,
      headers: headers,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      responseType: ResponseType.json
    );
    _dio = Dio(options);
  }
  var headers = {
    CONTENT_TYPE: APPLICATION_JSON,
    ACCEPT: APPLICATION_JSON,
   // AUTHORIZATION: TOKEN,
    //DEFAULT_LANGUAGE: DEFAULT_LANGUAGE
  };

  // get请求
  Future<Response> get(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response reponse = await _dio.get(url,
        queryParameters: params,
        options: requestOptions,
        cancelToken: cancelToken);
    return reponse;
  }

  /// post 请求
  Future<Response> post(
    String url, {
    dynamic data,
    Options? options,
    bool withLoading = true,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.post(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  //put
  Future<Response> put(
    String url, {
    dynamic data,
    Options? options,
    bool withLoading = true,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.put(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  // patch
  Future<Response> patch(
    String url, {
    dynamic data,
    bool withLoading = true,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.patch(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  /// delete 请求
  Future<Response> delete(
    String url, {
    dynamic data,
    Options? options,
    bool withLoading = true,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.delete(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }
}
