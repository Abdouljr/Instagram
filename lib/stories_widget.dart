import 'package:flutter/material.dart';

class Storieswidget extends StatelessWidget {
  Storieswidget({super.key});
  final List storyItem = [
    {
      "nom": "Messi",
      "photo": "assets/images/profil/messi_profil.jpg",
    },
    {
      "nom": "Cristiano",
      "photo": "assets/images/profil/cris_profil.jpg",
    },
    {
      "nom": "Gavi",
      "photo": "assets/images/profil/gavi_profil.jpg",
    },
    {
      "nom": "Pedri",
      "photo": "assets/images/profil/pedri_profil.jpg",
    },
    {
      "nom": "Gavi",
      "photo": "assets/images/profil/gavi_profil.jpg",
    },
    {
      "nom": "Pedri",
      "photo": "assets/images/profil/pedri_profil.jpg",
    },
    {
      "nom": "Neymar",
      "photo": "assets/images/profil/neymar_profil.jpg",
    },
    {
      "nom": "Neymar",
      "photo": "assets/images/profil/neymar_profil.jpg",
    },
    {
      "nom": "Haland",
      "photo": "assets/images/profil/haland_profil.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: storyItem.map((story) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/Instagram_Stories.png',
                  height: 85,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  backgroundImage: AssetImage(story["photo"]),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              story["nom"],
              maxLines: 1,
              style: const TextStyle(
                fontSize: 14,
              ),
            )
          ]),
        );
      }).toList()),
    );
  }
}
