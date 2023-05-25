import 'package:flutter_bloc/flutter_bloc.dart';
import '/models/movie.dart';
import '/services/api_service.dart';

class MoviesBloc extends Cubit<List<Movie>> {
  final ApiService _apiService = ApiService();

  MoviesBloc() : super([]);

  void getPopularMovies() async {
    try {
      final movies = await _apiService.getPopularMovies();
      emit(movies);
    } catch (e) {
      // Hata durumunda gerekli işlemleri yapabilirsiniz
    }
  }
}
