import 'package:flutter/material.dart';
import 'package:instagram/post_widget.dart';
import 'package:instagram/stories_widget.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final PageController pageController = PageController(initialPage: 0);
  int indexCourant = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          title: Image.asset(
            'assets/images/Instagram-Logo.png',
            height: 70,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [Storieswidget(), Postwidget()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt_outlined), label: 'Add photo'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Profil')
            ]),
      ),
    );
  }
}
