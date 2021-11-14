import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  _InscriptionPageState createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  bool valid = false;
  bool visible = true;

  get emailRegex => null;
  get digitsRegex => null;

  late User user = new User("", "", "", "", "", 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "S'inscrire",
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 8, 10),
          child: Container(
            width: double.infinity,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    "Nom :",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    autovalidateMode: valid
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Votre nom",
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                    ),
                    validator: (value) {
                      if ((value == null) || (value.trim().length == 0)) {
                        return "Le nom ne peut être vide";
                      }
                      return null;
                    },
                    onSaved: (name) {
                      user.name = name.toString();
                    },
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Prénoms :",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    autovalidateMode: valid
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Vos Prénoms",
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                    ),
                    validator: (value) {
                      if ((value == null) || (value.trim().length == 0)) {
                        return "Les prénom ne peuvent être vide";
                      }
                      return null;
                    },
                    onSaved: (prenom) {
                      user.firstname = prenom.toString();
                    },
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    autovalidateMode: valid
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                    validator: (v) {
                      String value = v?.trim() ?? "";
                      if (emailRegex.hasMatch(value)) {
                        return null;
                      }
                      return "Email incorrect";
                    },
                    onSaved: (email) {
                      user.email = email.toString();
                    },
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Mot de passe :",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: visible,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: "Mot de passe",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          !visible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                      ),
                    ),
                    onSaved: (password) {
                      user.password = password.toString();
                    },
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Numéro de téléphone :",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    autovalidateMode: valid
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    keyboardType: TextInputType.phone,
                    maxLength: 8,
                    decoration: InputDecoration(
                      hintText: "Téléphone",
                      prefixIcon: Icon(
                        Icons.call,
                      ),
                    ),
                    validator: (v) {
                      String value = v?.trim() ?? "";
                      if ((value.trim().length == 8) &&
                          digitsRegex.hasMatch(value)) {
                        return null;
                      }
                      return "Numéro incorrect";
                    },
                    onSaved: (nmero) {
                      user.cellphone = int.parse(nmero.toString());
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    child: Center(
                      child: GestureDetector(
                        child: Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Center(
                            child: Text(
                              "S'inscrire",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
