import 'package:flutter/material.dart';
import 'package:input_widgets/route_islemleri.dart';

void main(List<String> args) {
  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RouteIslemleri(),
      
    ),
  );
}

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  const TextFieldIslemleri({Key? key, required this.title}) : super(key: key);

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.teal, ----> Form içi doldurulmak istenirse.
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintText: "E-mail giriniz.",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  labelText: "E-mail",
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  prefixIcon: Icon(Icons.email)),
              keyboardType: TextInputType.emailAddress,
              maxLength: 100,
              maxLines: 2,
              autofocus: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Şifre",
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintText: "Şifre giriniz.",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  )),
              keyboardType: TextInputType.number,
              maxLength: 20,
              maxLines: 1,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
