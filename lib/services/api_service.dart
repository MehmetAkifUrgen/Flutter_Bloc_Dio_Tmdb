import 'package:dio/dio.dart';
import '/models/movie.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Movie>> getPopularMovies() async {
    try {
      final response = await _dio.get(
        'https://api.themoviedb.org/3/movie/popular',
        queryParameters: {
          'api_key': 'b953ac9f9bd22f92fd0cc94a9cc906b1',
        },
      );

      final results = List<Map<String, dynamic>>.from(response.data['results']);
      final movies = results.map((map) => Movie.fromJson(map)).toList();

      return movies;
    } catch (e) {
      throw Exception('Failed to fetch popular movies');
    }
  }
}
