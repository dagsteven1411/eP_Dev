import 'package:flutter/material.dart';

class ClicString extends StatelessWidget {
  final String texte;
  final double taille;
  final mapage;

  const ClicString(
      {Key? key,
      required this.texte,
      required this.taille,
      required this.mapage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => mapage),
          );
        },
        child: Text(
          texte,
          style: TextStyle(
            fontSize: taille,
          ),
        ),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}

class User {
  String name = "";
  String firstname = "";
  String fullname = "";
  String email = "";
  String password = "";
  int cellphone = 00000000;

  User(String name, String firstname, String fullname, String email,
      String password, int cellphone) {
    this.name = name;
    this.firstname = firstname;
    this.fullname = "$name $firstname";
    this.email = email;
    this.password = password;
    this.cellphone = cellphone;
  }
}
