import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({ Key? key }) : super(key: key);

  @override
  _ConnectPageState createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {

  bool valid = false;
  bool visible = true;

  get emailRegex => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
            title: Text(
              'Se Connecter',
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
            automaticallyImplyLeading: true,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10,30.0,10,8),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 15,),
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
                  ),
                  SizedBox(height: 45,),
                  Text(
                    "Mot de passe :",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 15,),
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
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      child: GestureDetector(
                        child: Text(
                          "Mot de passe oublié",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        onTap: (){

                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: double.infinity,
                    child:Center(
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
                              "Se Connecter",
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
                ],
              ),
            ),
          ),
    );
  }
}