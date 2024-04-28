import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/models/person_dart.dart';
import '/pages/candidats_form_page.dart';
import '/pages/candidats_page.dart';

class CandidatsListPage extends StatefulWidget {
  const CandidatsListPage({super.key});

  @override
  State<CandidatsListPage> createState() => _CandidatsListPageState();
}

class _CandidatsListPageState extends State<CandidatsListPage> {
  String name = "";
  bool liked = false;
  List<Person> persons = [];
  List<Person> candidats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Elections"),

        actions: [
          IconButton(
              onPressed: () async {
                Person person = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CandidatsPage(
                        candidats:candidats,
                      ),
                    ));
                print(person.name);
                candidats.remove(person);
                setState(() {});
              },
              icon: Icon(Icons.how_to_vote_outlined))
        ],
      ),
      body: ListView(
        children: persons
            .map((person) => ListTile(
                  title: Text("${person.name} ${person.surname}"),
                  subtitle:Text("${person.biographie}"),

          leading: Card(child: Image.network('https://th.bing.com/th?q=Banque+Images+Gratuites&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-WW&cc=BJ&setlang=fr&adlt=moderate&t=1&mw=247') ,),

                  onTap: () {
                    addCandidats(person);
                    setState(() {});
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Person person = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CandidatsFormPage()
              ));

          setState(() => persons.add(person));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  bool checkIfExists(Person person) {
    return candidats.contains(person);
  }

  void addCandidats(Person person) {
    if (!checkIfExists(person)) {
      candidats.add(person);
    } else {
      candidats.remove(person);
    }
  }
}
