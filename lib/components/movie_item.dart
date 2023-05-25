// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String posterPath;
  final String title;
  const MovieItem({
    Key? key,
    required this.posterPath, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              width: 75,
              child: Image.network(
                'https://image.tmdb.org/t/p/w200${posterPath}',
              ),
            ),
          ),
          Text(title,style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),)
        ],
      ),
    );
  }
}
