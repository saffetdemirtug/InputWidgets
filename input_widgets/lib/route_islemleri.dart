import 'package:flutter/material.dart';
import 'package:input_widgets/date_time_picker.dart';
import 'package:input_widgets/diger_form_elemanlari.dart';
import 'package:input_widgets/global_key_kullanimi.dart';
import 'package:input_widgets/text_form_field_kullanimi.dart';

class RouteIslemleri extends StatefulWidget {
  const RouteIslemleri({super.key});

  @override
  State<RouteIslemleri> createState() => _RouteIslemleriState();
}

class _RouteIslemleriState extends State<RouteIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
        backgroundColor: Colors.teal.shade900,
      ),
      backgroundColor: Colors.teal.shade700,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GlobalKeyKullanimi()));
                  },
                  child: const Text("GlobalKey Kullanımı")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TextFormFieldKullanimi()));
                  },
                  child: const Text("TextFormField Kullanımı")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DigerFormElemanlari()));
                  },
                  child: const Text("Diğer Form Elemanları")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TarihSaatOrnekleri()));
                  },
                  child: const Text("Date & Time Picker")),
            ],
          ),
        ),
      ),
    );
  }
}
