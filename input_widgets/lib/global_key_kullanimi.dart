import 'package:flutter/material.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  const GlobalKeyKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    final sayacWidgetKey = GlobalKey<_SayacWidgetState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Global Key Kullanımı"),
      ),
      backgroundColor: Colors.grey.shade400,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Butona Basılma Miktarı",
              style: TextStyle(fontSize: 25),
            ),
            SayacWidget(
              key: sayacWidgetKey,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacWidgetKey.currentState!._sayaciArttir();
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SayacWidget extends StatefulWidget {
  const SayacWidget({super.key});

  @override
  State<SayacWidget> createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  int _sayac = 0;
  void _sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }

//Eğer ki _SayacWidgetState Widget'a yeni bir dosyadan erişilecekse private kaldırılmalıdır.
  @override
  Widget build(BuildContext context) {
    return Text(
      _sayac.toString(),
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
