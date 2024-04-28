import 'package:flutter/material.dart';
import '/common/I_button.dart';
import '/common/i_input.dart';
import '/models/person_dart.dart';
import 'package:tp_candidats/candidats_presentation.dart';

class CandidatsFormPage extends StatefulWidget {
  const CandidatsFormPage({Key? key}) : super(key: key);

  @override
  State<CandidatsFormPage> createState() => _CandidatsFormPageState();
}

class _CandidatsFormPageState extends State<CandidatsFormPage> {
  final _formKey = GlobalKey<FormState>();
  final Person person = Person();
  String? image; // Ajout de la variable image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Création de candidats"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      // Ajoutez le code pour gérer la sélection de l'image depuis la caméra
                      // Par exemple:
                      // image = await ImagePicker().pickImage(source: ImageSource.camera);
                      // setState(() {});
                    },
                    child: image != null
                        ? CircleAvatar(
                      radius: 50,
                    //  backgroundImage: FileImage(File(image!)),
                    )
                        : CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                  Text('Ajouter une photo'),
                ],
              ),
              const SizedBox(height: 20),
              IIinput(
                name: 'Nom',
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Champ obligatoire";
                  }
                },
                onSaved: (value) {
                  person.name = value!;
                },
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.person),
              ),
              const SizedBox(height: 20),
              IIinput(
                name: 'prénom',
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Champ obligatoire";
                  }
                },
                onSaved: (value) {
                  person.surname = value!;
                },
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.person),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 20),
              IIinput(
                name: 'parti politique',
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Champ obligatoire";
                  }
                },
                onSaved: (value) {
                  person.parti_politic = value!;
                },
                prefixIcon: Icon(Icons.flag),
                suffixIcon: Icon(Icons.flag),
              ),
              const SizedBox(height: 20),
              IIinput(
                name: 'Description',
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Champ obligatoire";
                  }
                },
                onSaved: (value) {
                  person.biographie = value!;
                },
                prefixIcon: Icon(Icons.energy_savings_leaf_rounded),
                suffixIcon: Icon(Icons.energy_savings_leaf_rounded),
              ),

              // Ajoutez d'autres champs d'entrée au besoin
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: IButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(person: person, image: image),
                ),
              );
            }
          },
          text: 'Sauvegarder',
        ),
      ),
    );
  }
}
