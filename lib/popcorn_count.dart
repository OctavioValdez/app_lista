import 'package:flutter/material.dart';

class Popcorn extends StatefulWidget {
  const Popcorn({super.key});

  @override
  State<Popcorn> createState() => _PopcornState();
}

class _PopcornState extends State<Popcorn> {
  int pop_count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.white,
      child: Row(
        children: [
          Image.network(
              "https://previews.123rf.com/images/losw/losw1307/losw130700041/21264150-tasty-popcorn-aislado-en-un-fondo-blanco-ilustraci%C3%B3n.jpg"),
          Column(
            children: [
              Text("Palomitas (Medianas)"),
              Text("$pop_count"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        pop_count += 1;
                      },
                      icon: const Icon(Icons.arrow_upward)),
                  IconButton(
                      onPressed: () {
                        pop_count -= 1;
                      },
                      icon: const Icon(Icons.arrow_downward))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
