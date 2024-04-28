import 'package:flutter/material.dart';
import '/models/person_dart.dart';
 import 'package:tp_candidats/candidats_presentation.dart';
class CandidatsPage extends StatelessWidget {
  final List<Person> candidats;

  CandidatsPage({Key? key, required this.candidats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Les candidats",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: candidats.map((person) {
          return ListTile(
            title: Text("${person.name} ${person.surname}"),
            leading: Card(
              child: Image.asset('assets/images/tz.jpg'),
              margin: EdgeInsets.all(10),
            ),
            onTap: () {
              // Spécifiez la route à laquelle naviguer ici
              // par exemple :
               Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(person: person,)));
            },
          );
        }).toList(),
      ),
    );
  }
}
