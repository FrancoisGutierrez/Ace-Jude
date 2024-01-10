import 'package:flutter/material.dart';

class parametre extends StatefulWidget {
  @override
  _parametreState createState() => _parametreState();
}

class _parametreState extends State<parametre> {
  String _selectedLanguage = 'Français';
  List<String> _preferences = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Choix de la langue
            Text(
              'Langue :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: ['Français', 'English', 'Español', 'Other']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            // Catégories de préférences
            Text(
              'Préférences :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Végétarien'),
              value: _preferences.contains('Végétarien'),
              onChanged: (bool? value) {
                _updatePreferences('Végétarien', value!);
              },
            ),
            CheckboxListTile(
              title: Text('Vegan'),
              value: _preferences.contains('Vegan'),
              onChanged: (bool? value) {
                _updatePreferences('Vegan', value!);
              },
            ),
            CheckboxListTile(
              title: Text('Sans Porc'),
              value: _preferences.contains('Sans Porc'),
              onChanged: (bool? value) {
                _updatePreferences('Sans Porc', value!);
              },
            ),
            CheckboxListTile(
              title: Text('Allergie (à compléter)'),
              value: _preferences.contains('Allergie'),
              onChanged: (bool? value) {
                _updatePreferences('Allergie', value!);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _updatePreferences(String preference, bool value) {
    setState(() {
      if (value) {
        _preferences.add(preference);
      } else {
        _preferences.remove(preference);
      }
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: parametre(),
  ));
}
