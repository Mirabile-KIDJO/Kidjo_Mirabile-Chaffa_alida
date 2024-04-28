import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tp_candidats/models/person_dart.dart';

import 'models/person_dart.dart';

class ProfilePage extends StatelessWidget {
  final Person person;
  final String? image;

  const ProfilePage({Key? key, required this.person, this.image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (image != null)
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/tz.jpg'),
                ),
              ),
            SizedBox(height: 20),
            Text('Nom: ${person.name}'),
            SizedBox(height: 20),
            Text('prénom :${person.surname}'),
            SizedBox(height: 20),
            Text('description: ${person.biographie}'),
            SizedBox(height: 20),
            Text('image: ${person.image}'),
                SizedBox(height: 20),
      Text('parti politique: ${person.parti_politic}'),

      SizedBox(height: 20),
      Text('Nom: ${person.name}'),

            // Ajoutez d'autres champs de la même manière
          ],
        ),
      ),
    );
  }
}
