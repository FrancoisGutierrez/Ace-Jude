import 'package:flutter/material.dart';

class Recette1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD7ABEC),
        title: Text('Recette de Riz Cantonnais', style: TextStyle(color: Color(0xFFC5D4E8))),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image de la recette
            Image.asset(
              'assets/image/riz.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Titre de la recette
            Text(
              'Riz Cantonnais',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Information sur la recette (temps de préparation et difficulté)
            Text(
              'Temps de préparation : 30 minutes\nDifficulté : Moyenne',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Ingrédients
            Text(
              'Ingrédients :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              ' - 200g de nouilles de ramen\n - 500ml de bouillon de poulet\n - Légumes de votre choix\n - 2 œufs\n - Sauce soja\n - Huile de sésame',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Instructions
            Text(
              'Instructions :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Faites bouillir les nouilles de ramen selon les instructions sur l\'emballage.\n2. Préparez le bouillon de poulet et ajoutez les légumes coupés.\n3. Faites cuire les œufs à la coque.\n4. Disposez les nouilles dans un bol, versez le bouillon, ajoutez les légumes.\n5. Ajoutez les œufs coupés en deux.\n6. Assaisonnez avec de la sauce soja et de l\'huile de sésame selon votre goût.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Recette1(),
  ));
}
