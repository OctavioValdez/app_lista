import 'package:flutter/material.dart';
import 'package:listas_app/item_movie.dart';
import 'package:listas_app/popcorn_count.dart';

class HomePage extends StatelessWidget {
  final _listElements = [
    {
      "title": "Star wars",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
    },
    {
      "title": "Black widow",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/0NTTbFn.jpg",
    },
    {
      "title": "Frozen 2",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
    {
      "title": "Joker",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/trdzMAl.jpg",
    },
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 26, 26, 152),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Seleccione Pelicula'),
        ),
        body: Column(
          children: [Popcorn()],
        ));
  }

  Container listAllignment(BuildContext context) {
    return Container(
      height: 200,
      child: movingList(),
    );
  }

  ListView movingList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _listElements.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemMovie(
            movie_data: _listElements[index],
          );
        });
  }
}
