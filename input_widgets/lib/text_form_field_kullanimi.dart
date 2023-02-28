import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _username = " ", _email = " ", _password = " ";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextFormField Kullanımı")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  initialValue: "Admin",
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (deger) {
                    if (deger!.length < 5) {
                      return "Username 5 karakterden az olamaz.";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    _username = deger!;
                  },
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(45.0))),
                      labelText: "Username",
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: "Username"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: "Admin@admin.com",
                  autovalidateMode: AutovalidateMode.always,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(45.0))),
                      errorStyle: TextStyle(fontSize: 14),
                      labelText: "E-mail",
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: "E-mail"),
                  validator: (deger) {
                    //EmailValidator hazır paket kullanıldı.
                    if (!EmailValidator.validate(deger!)) {
                      return "Geçerli bir E-mail giriniz.";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    _email = deger!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: "AdminPassword",
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (deger) {
                    if (deger!.length < 9) {
                      return "Password 8 karakterden az olamaz.";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    _password = deger!;
                  },
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(45.0))),
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      bool validate = _formKey.currentState!.validate();
                      if (validate) {
                        _formKey.currentState!.save();
                        String result =
                            "Username:$_username\nE-mail:$_email\nPassword:$_password";
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(result),
                            action: SnackBarAction(
                              label: 'Kapat',
                              onPressed: () {},
                            )));
                      }
                    },
                    child: const Text("Giriş Yap"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
