import 'package:flutter/material.dart';
import 'package:my_favorite_anime/appdata/anime_and_goods_list.dart';
import 'package:my_favorite_anime/appscreens/detail_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://wallpaperaccess.com/full/51139.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://images-na.ssl-images-amazon.com/images/I/91BQHhZ+6vL._RI_.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://wallpaperaccess.com/full/407974.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 600,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final AnimeList anime = favAnimeList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(anime: anime);
                            }));
                          },
                          child: Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Image.network(anime.posters),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          anime.name,
                                          style: TextStyle(
                                              fontSize: 17.0,
                                            fontFamily: 'PadaukBold',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(anime.synopsis, maxLines: 1, overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: favAnimeList.length,
                    ),
                  )
                ]
            )
        )
    );
  }
}
