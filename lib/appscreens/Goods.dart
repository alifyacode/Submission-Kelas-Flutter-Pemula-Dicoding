import 'package:flutter/material.dart';
import 'package:my_favorite_anime/appdata/anime_and_goods_list.dart';

class Goods extends StatefulWidget {
  @override
  _GoodsState createState() => _GoodsState();
}

class _GoodsState extends State<Goods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: animeGoodsList.map((anime) {
          return InkWell(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      anime.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      anime.name, maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      anime.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'ABeeZee',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: BuyButton()
                  ),

                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class BuyButton extends StatefulWidget {
  @override
  _BuyButtonState createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  bool isBuy = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBuy ? Icons.shopping_cart : Icons.shopping_cart_outlined,
        color: Colors.green,
      ),
      onPressed: () {
        setState(() {
          isBuy = !isBuy;
        });
      },
    );
  }
}

