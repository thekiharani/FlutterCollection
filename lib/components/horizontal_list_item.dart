import 'package:flutter/material.dart';
import 'package:maishabeta/models/movie.dart';
import 'package:maishabeta/screens/movie_details_screen.dart';

class HorizontalListItem extends StatelessWidget {
  final int index;
  HorizontalListItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(MovieDetailsScreen.routeName, arguments: {
            'id': movieList[index].id,
            'title': movieList[index].title,
            'imageUrl': movieList[index].imageUrl,
            'description': movieList[index].description,
            'rating': movieList[index].rating,
            'year': movieList[index].year,
            'duration': movieList[index].duration
          });
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(movieList[index].imageUrl)
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              movieList[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }
}
