import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/blocs/movies_bloc.dart';
import '/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MoviesBloc moviesBloc = MoviesBloc();

  @override
  void dispose() {
    moviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popüler Filmler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<MoviesBloc>(
        create: (context) => moviesBloc..getPopularMovies(),
        child: HomeScreen(),
      ),
    );
  }
}
