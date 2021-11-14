import 'package:flutter/material.dart';
import 'package:flutter_application_5/aProposPage.dart';
import 'package:flutter_application_5/connectPage.dart';
import 'package:flutter_application_5/contactPage.dart';
import 'package:flutter_application_5/inscriptPage.dart';
import 'package:flutter_application_5/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          toolbarOpacity: 1,
          elevation: 0,
          actions: [
            PopupMenuButton(
              padding: EdgeInsets.symmetric(horizontal: 20),
              icon: Icon(
                Icons.more_vert,
              ),
              itemBuilder: (context) =>[
                PopupMenuItem(
                  child: Container(
                    child: Column(
                      children: [
                        ClicString(texte: "A Propos", taille: 15, mapage: AproposPage(),),
                        SizedBox(height: 10,),
                        ClicString(texte: "Contacts", taille: 15, mapage: ContactsPage(),)
                      ],          
                    ),
                  )
                )
              ]
            ,)
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Text(
                      'ePatriote Dev High School',
                      style: TextStyle(
                        color: Colors.red,  
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClicString(texte: "S'inscrire", taille: 18, mapage: InscriptionPage(),),
                        ClicString(texte: "Se connecter", taille: 18, mapage: ConnectPage(),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

