import 'package:flutter/material.dart';

class TarihSaatOrnekleri extends StatefulWidget {
  const TarihSaatOrnekleri({super.key});

  @override
  State<TarihSaatOrnekleri> createState() => _TarihSaatOrnekleriState();
}

class _TarihSaatOrnekleriState extends State<TarihSaatOrnekleri> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime birYilOncesi = DateTime(suan.year - 1);
    DateTime birYilSonrasi = DateTime(suan.year + 1);

    TimeOfDay suankiSaat = TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date & Time Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: suan,
                          firstDate: birYilOncesi,
                          lastDate: birYilSonrasi)
                      .then((secilenTarih) {
                    debugPrint(secilenTarih.toString());
                    debugPrint(secilenTarih?.millisecondsSinceEpoch.toString());
                    debugPrint(secilenTarih?.millisecond.toString());
                    debugPrint(secilenTarih?.toUtc().toIso8601String());
                    debugPrint(secilenTarih?.toIso8601String());
                    debugPrint(secilenTarih?.weekday.toString());
                  });
                },
                child: const Text("Tarih")),
            ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: suankiSaat)
                      .then((secilenSaat) {
                    debugPrint(secilenSaat?.format(context));
                    debugPrint(secilenSaat!.hour.toString()+":"+secilenSaat.minute.toString());
                  });
                },
                child: const Text("Saat"))
          ],
        ),
      ),
    );
  }
}
