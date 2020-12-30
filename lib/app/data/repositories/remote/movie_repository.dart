import 'package:get/instance_manager.dart';
import 'package:getx_pattern_demo/app/data/models/movie.dart';
import 'package:getx_pattern_demo/app/data/providers/remote/movie_api.dart';

class MoviesRepository {
  final MovieAPI _moviesAPI = Get.find<MovieAPI>();

  Future<List<Movie>> getTopMovies() => _moviesAPI.getTopMovies();
  
}