import 'package:flutter/material.dart';
import 'pages/candidats_list_page.dart';
import 'pages/candidats_page.dart';
class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Enregistrement"),
        ),
        body:
        TextButton(
          onPressed: () {
            // Action à effectuer lors du clic sur le bouton
            print("clic !");
            Navigator.pushNamed(context,"/person");

          },
          child: Text('Vos imformations ont étées enregistrées'),
        )
    );
  }
}
