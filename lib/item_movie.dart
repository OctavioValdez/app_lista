import 'package:flutter/material.dart';

class ItemMovie extends StatelessWidget {
  final Map<String, String> movie_data;
  ItemMovie({super.key, required this.movie_data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.network(
              "${movie_data["image"]}",
              fit: BoxFit.fill,
            )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xef4169d8),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    Text("${movie_data["title"]}",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("${movie_data["description"]}",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
