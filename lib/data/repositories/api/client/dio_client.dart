import 'package:api_and_state_management/config.dart';
import 'package:dio/dio.dart';

final Dio dio = Dio(BaseOptions(
    baseUrl: Config.API_URL,
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    responseType: ResponseType.json));
