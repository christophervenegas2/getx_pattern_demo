import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/providers/local/local_auth.dart';
import 'package:getx_pattern_demo/app/data/providers/remote/authentication_api.dart';
import 'package:getx_pattern_demo/app/data/providers/remote/movie_api.dart';
import 'package:getx_pattern_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern_demo/app/data/repositories/remote/authentication_repository.dart';
import 'package:getx_pattern_demo/app/data/repositories/remote/movie_repository.dart';


// class MockAuthenticationAPI implements AuthenticationAPI {
//   @override
//   Future<RequestToken> newRequesToken() {
//     throw Exception("test error");
//   }

// }

class DependencyInjection {
  static void init() {

    Get.put<FlutterSecureStorage>(FlutterSecureStorage());

    Get.put<Dio>(Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));

    //providers
    Get.put<AuthenticationAPI>(AuthenticationAPI());
    Get.put<LocalAuth>(LocalAuth());
    Get.put<MovieAPI>(MovieAPI());

    //repository
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<LocalAuthRepository>(LocalAuthRepository());
    Get.put<MoviesRepository>(MoviesRepository());
  }
}