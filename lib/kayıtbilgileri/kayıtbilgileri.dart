import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class kayitbilgileri extends StatelessWidget {
  kayitbilgileri({Key? key}) : super(key: key);
  final formkey = GlobalKey<FormState>();

  String? eMail, parola;

  yaziEkle() {
    FirebaseFirestore.instance
        .collection("yazılar")
        .doc(eMail)
        .set({'mail': eMail, 'parola': parola});
  }

  Future<void> kayit() async {
    var user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: eMail!, password: parola!)
        .then((kayitbilgileri) {
      /*   FirebaseFirestore.instance
          .collection("yazılar")
          .doc(eMail)
          .set({'mail': eMail, 'parola': parola}); */
    });
  }

  girisYap() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: eMail!, password: parola!)
        .then((kayitbilgileri) {});
  }

  @override
  Widget build(BuildContext context) {
    String? eMail, parola;
    return Scaffold(
      appBar: AppBar(title: Text("Kayıt Ekranı")),
      body: Form(
        key: formkey,
        child: Container(
          color: Colors.blue[300],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 4.0,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          onSaved: (newValue) {
                            parola = newValue!;
                          },
                          validator: (veri) {
                            if (veri!.length < 4) {
                              return 'parola 4 karakter olamalı';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              hintText: "e-posta",
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              )),
                        ),
                        TextFormField(
                          onSaved: (newValue) {
                            eMail = newValue!;
                          },
                          validator: (veri) {
                            if (veri!.length < 4) {
                              return 'parola 4 karakter olamalı';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              hintText: "parola",
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              )),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {
                                  bool _validate = false;
                                  _validate = formkey.currentState!.validate();
                                  if (_validate) {
                                    formkey.currentState?.save();
                                    //  yaziEkle();
                                    girisYap();
                                    Navigator.popAndPushNamed(context, "giris");
                                  }

                                  print(eMail);
                                  print(parola);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 8,
                                    bottom: 8,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Kayıt ol",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
