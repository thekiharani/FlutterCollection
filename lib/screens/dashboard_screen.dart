import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:maishabeta/components/helpers.dart';
import 'package:maishabeta/components/horizontal_list_item.dart';
import 'package:maishabeta/components/top_rated_list_item.dart';
import 'package:maishabeta/components/vertical_list_item.dart';
import 'package:maishabeta/models/movie.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaishaBeta'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recent Videos',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  FlatButton(
                    child: Text('View All'),
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: movieList.length,
                itemBuilder: (context, i) => HorizontalListItem(i),
              ),
            ),


            HorizontalLine(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best of 2020',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  FlatButton(
                    child: Text('View All'),
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: bestMovieList.length,
                itemBuilder: (context, i) => VerticalListItem(i),
              ),
            ),

            HorizontalLine(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Rated Movies',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  FlatButton(
                    child: Text('View All'),
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: topRatedMovieList.length,
                itemBuilder: (context, i) => TopRatedListItem(i),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
