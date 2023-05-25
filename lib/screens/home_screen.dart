import 'package:first_app/components/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/blocs/movies_bloc.dart';
import '/models/movie.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popüler Filmler'),
      ),
      body: BlocBuilder<MoviesBloc, List<Movie>>(
        builder: (context, movies) {
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return MovieItem(
                posterPath: movie.posterPath,
                title: movie.title,
              );
            },
          );
        },
      ),
    );
  }
}
