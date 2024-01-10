import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Profil'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Photo de profil
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/profile_image.jpg'), // Remplacez par le chemin de votre image
          ),
          SizedBox(height: 20),
          // Informations du profil
          Text(
            'Nom Utilisateur',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'utilisateur@example.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          // Autres informations du profil
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Ville: Paris'),
          ),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Date de Naissance: 01/01/1990'),
          ),
          // Vous pouvez ajouter d'autres informations ici
        ],
      ),
    );
  }
}
