import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'src/Recette1.dart'; // Import des pages Recette
import 'src/Recette2.dart';
import 'src/Recette3.dart';
import 'src/Recette4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/recette1': (context) => Recette1(),
        '/recette2': (context) => Recette2(),
        '/recette3': (context) => Recette3(),
        '/recette4': (context) => Recette4(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> images = [
    'assets/image/riz.jpg',
    'assets/image/quiche.jpg',
    'assets/image/ramen.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD7ABEC),
        title: Text('Ace & Jude', style: TextStyle(color: Color(0xFFC5D4E8))),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFD7ABEC),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Nos Recettes'),
              onTap: () {
                Navigator.pop(context); // Fermer le drawer
              },
            ),
            ListTile(
              title: Text('Recettes Favorites'),
              onTap: () {
                Navigator.pop(context); // Fermer le drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Grosse photo avec espace en bas
          GestureDetector(
            onTap: () {
              // Mettez ici la logique de navigation pour la grosse photo
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Image.asset(
                'assets/image/Ace and jude.png',
                fit: BoxFit.cover,
                // Autres propriétés de l'image
              ),
            ),
          ),

          // Cadre pour encadrer le carrousel avec le titre "Recettes à la Une"
          Container(
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Recettes à la Une',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xFFF4A919E),
                  indent: 16,
                  endIndent: 16,
                ),
                CarouselSlider(
                  items: images.map((image) {
                    return InkWell(
                      onTap: () {
                        // Mettez ici la logique de navigation pour chaque image du carrousel
                        if (image == 'assets/image/riz.jpg') {
                          Navigator.pushNamed(context, '/recette1');
                        } else if (image == 'assets/image/quiche.jpg') {
                          Navigator.pushNamed(context, '/recette2');
                        } else if (image == 'assets/image/ramen.jpg') {
                          Navigator.pushNamed(context, '/recette3');
                        }
                      },
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
