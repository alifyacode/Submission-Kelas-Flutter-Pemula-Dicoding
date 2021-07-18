import 'package:flutter/material.dart';
import 'package:my_favorite_anime/appdata/anime_and_goods_list.dart';

class DetailScreen extends StatelessWidget {
  final AnimeList anime;

  DetailScreen({required this.anime});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(null)),
          title: Text("Anime Detail"),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: [
                Positioned(
                  child: Image.network(anime.posters),
                ),
                Positioned(
                  bottom: 10,
                  left:20,
                  child: Column(
                    children: [
                      Text(
                          anime.name,
                          style: TextStyle(
                          fontWeight:FontWeight.bold ,
                          fontSize: 30.0,
                          color: Colors.white,
                          fontFamily: 'ABeeZee'
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                anime.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Padauk',
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 5.0,right: 10.0),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent
                ),
                child: BookmarkButton()
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                'Other Anime',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'PadaukBold',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              height:450,
              child: GridView.count(
              crossAxisCount: 2,
              children: favAnimeList.map((anime) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(anime: anime);
                    }));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.network(
                            anime.posters,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            anime.name,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                            child: FavButton()
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            )
          ],
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBookmark ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
    );
  }
}

class FavButton extends StatefulWidget {
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}