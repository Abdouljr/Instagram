import 'package:flutter/material.dart';

class Postwidget extends StatelessWidget {
  Postwidget({super.key});
  final List postItems = [
    {
      "pseudo": "Messi",
      "profil": "assets/images/profil/messi_profil.jpg",
      "post": "assets/images/post/messi.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Cristiano",
      "profil": "assets/images/profil/cris_profil.jpg",
      "post": "assets/images/post/cr7.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Gavi",
      "profil": "assets/images/profil/gavi_profil.jpg",
      "post": "assets/images/post/gavi.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Pedri",
      "profil": "assets/images/profil/pedri_profil.jpg",
      "post": "assets/images/post/pedri.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Gavi",
      "profil": "assets/images/profil/gavi_profil.jpg",
      "post": "assets/images/post/gavi.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Pedri",
      "profil": "assets/images/profil/pedri_profil.jpg",
      "post": "assets/images/post/pedri.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Neymar jr",
      "profil": "assets/images/profil/neymar_profil.jpg",
      "post": "assets/images/post/neymar.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Neymar jr",
      "profil": "assets/images/profil/neymar_profil.jpg",
      "post": "assets/images/post/neymar.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
    {
      "pseudo": "Haland",
      "profil": "assets/images/profil/haland_profil.jpg",
      "post": "assets/images/post/haland.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: postItems.map((e) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 50,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(e["profil"]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  e['pseudo'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  'assets/images/badge.png',
                  height: 35,
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  e["post"],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(e['profil']),
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'aimer par ',
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: e['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: ' et ',
                      ),
                      const TextSpan(
                        text: '202 autres personnes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e['pseudo'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        e['description'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Text(
                      'Voir plus',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '   Voir 35 commentaires',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  "Il y'a 17 min -",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                Text(
                  " Traduire",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      );
    }).toList());
  }
}
