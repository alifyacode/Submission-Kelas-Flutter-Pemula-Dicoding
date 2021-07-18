class AnimeList {
  String name;
  String synopsis;
  String description;
  String posters;

  AnimeList({
    required this.name,
    required this.synopsis,
    required this.description,
    required this.posters,
  });
}

var favAnimeList = [
  AnimeList(
    name: 'Moriarty the Patriot',
    synopsis: 'In the late 19th century, the British Empire nobility reigns while its working class suffers at their hands. Sympathetic to their plight, William James Moriarty wants to topple it all. ',
    description:
    'In the late 19th century, the British Empire nobility reigns while its working class suffers at their hands. Sympathetic to their plight, William James Moriarty wants to topple it all. Frustrated by the systemic inequity, Moriarty strategizes to fix the entire nation. Not even consulting detective Sherlock Holmes can stand in his way. It’s time for crime to revolutionize the world!',
    posters: 'https://images8.alphacoders.com/110/thumb-1920-1101642.jpg',
  ),
  AnimeList(
    name: 'Bungo Stray Dogs',
    synopsis: 'Nakajima Atsushi was kicked out of his orphanage, and now he has no place to go and no food. While he is standing by a river, on the brink of starvation, he rescues a man whimsically attempting suicide. ',
    description:
    'Nakajima Atsushi was kicked out of his orphanage, and now he has no place to go and no food. While he is standing by a river, on the brink of starvation, he rescues a man whimsically attempting suicide. That man is Dazai Osamu, and he and his partner Kunikida are members of a very special detective agency. They have supernatural powers and deal with cases that are too dangerous for the police or the military. They are tracking down a tiger that has appeared in the area recently, around the time Atsushi came to the area. The tiger seems to have a connection to Atsushi, and by the time the case is solved, it is clear that Atsushis future will involve much more of Dazai and the rest of the detectives!',
    posters: 'https://images-na.ssl-images-amazon.com/images/I/91BQHhZ+6vL._RI_.jpg',

  ),
  AnimeList(
    name: 'Rurouni Kenshin',
    synopsis: 'The Meiji Era was one of great renewal for Japan, where swords and killing were outlawed. However, many survivors from the time of Revolution still live, lurking in the shadows and waiting for a chance to use their killing blades again.',
    description:
    'The Meiji Era was one of great renewal for Japan, where swords and killing were outlawed. However, many survivors from the time of Revolution still live, lurking in the shadows and waiting for a chance to use their killing blades again. Only Kenshin Himura, formerly one of the most brutal of killers, hopes to keep his swordsmans honor and still live in the new era.',
    posters: 'https://wallpaperaccess.com/full/51139.jpg',
  ),
  AnimeList(
    name: 'Bungo and Alchemist -Gears of Judgement-',
    synopsis: 'Based on the popular mobile game of the same name. Bungo and Alchemist -Gears of Judgement- is set in a fantasy world with famous and handsome historical figures ',
    description:
    'Based on the popular mobile game of the same name. Bungo and Alchemist -Gears of Judgement- is set in a fantasy world with famous and handsome historical figures from the field of literature, who must call upon their magical abilities to save books that have been tainted by evil forces.',
    posters: 'https://images-na.ssl-images-amazon.com/images/I/91dBbhRNc-L._RI_.jpg',
  ),
  AnimeList(
    name: 'Gudetama',
    synopsis: 'Gudetama, an egg that is dead to the world and completely lacks motivation. No matter what cooking method you use, Gudetama remains unmoved.',
    description:
    'Gudetama, an egg that is dead to the world and completely lacks motivation. No matter what cooking method you use, Gudetama remains unmoved.Gudetama series is broadcast in a morning news section on TBS (Tokyo Broadcasting System Holdings) called “あさチャン！” from Saturday to Monday. Each episode only lasts for approximately one minute and up to 2017 it had nearly 1000 episodes. There are special stories about festivals.',
    posters: 'https://wallpaperaccess.com/full/407974.jpg',
  ),
  AnimeList(
    name: 'The Case Study of Vanitas',
    synopsis: 'In 19th-century Paris, young vampire Noé finds the Book of Vanitas in human hands. Calling himself Vanitas, this doctor wields its power and tempts Noé with a plan to “cure” all vampires.',
    description:
    'In 19th-century Paris, young vampire Noé finds the Book of Vanitas in human hands. Calling himself Vanitas, this doctor wields its power and tempts Noé with a plan to “cure” all vampires. Allying with him may be dangerous, but does he have a choice?',
    posters: 'https://chaospin.com/wp-content/uploads/2021/03/the-case-study-of-vanitas.jpg',
  ),
  AnimeList(
    name: 'Chibi Maruko-chan',
    synopsis: 'Momoko Sakura is an elementary school student who likes popular idol Momoe Yamaguchi and mangas. She is often called "Chibi Maruko-chan" due to her young age and small size.',
    description:
    'Momoko Sakura is an elementary school student who likes popular idol Momoe Yamaguchi and mangas. She is often called "Chibi Maruko-chan" due to her young age and small size. She lives together with her parents, her grandparents and her elder sister in a little town. In school, she has many friends with whom she studies and plays together everyday, including her close pal, Tama-chan; the student committee members, Maruo-kun and Migiwa-san; and the B-class trio: little master Hanawa-kun, Hamaji-Bu Taro and Sekiguchi-kun.',
    posters: 'https://ramenparados.com/wp-content/uploads/2016/10/chibi-maruko-chan-1000x600.jpg',
  ),
  AnimeList(
    name: 'Chii Sweet Home',
    synopsis: 'A grey and white kitten with black stripes wanders away from her mother and siblings one day while enjoying a walk outside with her family. ',
    description:
    'A grey and white kitten with black stripes wanders away from her mother and siblings one day while enjoying a walk outside with her family. Lost in her surroundings, the kitten struggles to find her family and instead is found by a young boy, Youhei, and his mother. They take the kitten home, but, as pets are not allowed in their housing complex, they try to find her a new home. This proves to be difficult, and the family decides to keep the kitten.',
    posters: 'https://www.anime-planet.com/images/anime/screenshots/chis-sweet-adventure-2nd-season-9293-1.jpg',
  ),
];

class GoodsList {
  String name;
  String price;
  String imageAsset;

  GoodsList({
    required this.name,
    required this.price,
    required this.imageAsset,
  });
}

var animeGoodsList = [
  GoodsList(
    name: 'Gudetama Bag',
    price: '183.000',
    imageAsset: 'https://i.pinimg.com/originals/37/b6/f7/37b6f745047539d60e37bbc3a066dd74.jpg',
  ),
  GoodsList(
    name: 'Chibi Maruko-chan nendoroid',
    price: '200.000',
    imageAsset: 'https://images-na.ssl-images-amazon.com/images/I/61DTFpbpYWS._AC_SL1500_.jpg',
  ),
  GoodsList(
    name: 'Yuukoku no moriarty (albert) keychain',
    price: '225.000',
    imageAsset: 'https://cf.shopee.co.id/file/2642db770a2d5b7aea3656a89f1b177b',
  ),
  GoodsList(
    name: 'Samurai x comic',
    price: '150.000',
    imageAsset: 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/4/12/1465e1c3-670a-474f-a9e3-cb4bf3501d05.jpg',
  ),
  GoodsList(
    name: 'Miyazawa kenji costume',
    price: '500.000',
    imageAsset: 'https://cdn.ezcosplay.com/media/catalog/product/cache/5d0bec2f8e72c2a83016e70e27f39683/b/u/bungo_to_alchemist_miyazawa_kenji_cosplay_costume.jpg',
  ),
  GoodsList(
    name: 'Gudetama Hoodie',
    price: '278.000',
    imageAsset: 'https://i.ebayimg.com/images/g/K6YAAOSwON5boGIy/s-l400.jpg',
  ),
  GoodsList(
    name: 'Bungou stray dogs (Dazai) nendroid',
    price: '225.000',
    imageAsset: 'https://images.tokopedia.net/img/cache/700/product-1/2019/5/10/5818481/5818481_1e6d4bda-e931-49bd-b809-7a8566c0f27a',
  ),
  GoodsList(
    name: 'Yuukoku no moriarty comics',
    price: '500.000',
    imageAsset: 'https://cf.shopee.co.id/file/be5427897b3e0808373f92c1da25d9a1',
  ),
];