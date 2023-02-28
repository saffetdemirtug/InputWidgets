import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  const DigerFormElemanlari({super.key});

  @override
  State<DigerFormElemanlari> createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  List<String> sehirIsimleri = [
    'Adana',
    'Adıyaman',
    'Afyon',
    'Ağrı',
    'Amasya',
    'Ankara',
    'Antalya',
    'Artvin',
    'Aydın',
    'Balıkesir',
    'Bilecik',
    'Bingöl',
    'Bitlis',
    'Bolu',
    'Burdur',
    'Bursa',
    'Çanakkale',
    'Çankırı',
    'Çorum',
    'Denizli',
    'Diyarbakır',
    'Edirne',
    'Elazığ',
    'Erzincan',
    'Erzurum',
    'Eskişehir',
    'Gaziantep',
    'Giresun',
    'Gümüşhane',
    'Hakkari',
    'Hatay',
    'Isparta',
    'Mersin',
    'İstanbul',
    'İzmir',
    'Kars',
    'Kastamonu',
    'Kayseri',
    'Kırklareli',
    'Kırşehir',
    'Kocaeli',
    'Konya',
    'Kütahya',
    'Malatya',
    'Manisa',
    'Kahramanmaraş',
    'Mardin',
    'Muğla',
    'Muş',
    'Nevşehir',
    'Niğde',
    'Ordu',
    'Rize',
    'Sakarya',
    'Samsun',
    'Siirt',
    'Sinop',
    'Sivas',
    'Tekirdağ',
    'Tokat',
    'Trabzon',
    'Tunceli',
    'Şanlıurfa',
    'Uşak',
    'Van',
    'Yozgat',
    'Zonguldak',
    'Aksaray',
    'Bayburt',
    'Karaman',
    'Kırıkkale',
    'Batman',
    'Şırnak',
    'Bartın',
    'Ardahan',
    'Iğdır',
    'Yalova',
    'Karabük',
    'Kilis',
    'Osmaniye',
    'Düzce'
  ];
  double sliderDegeri = 60;
  bool switchState = false;
  String sehirGrubu = "";
  bool chechBoxState = false;
  String sehirTercihi = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade900,
        onPressed: () {},
        child: const Icon(Icons.done),
      ),
      appBar: AppBar(
        title: const Text("Diğer Form Elemanları"),
        backgroundColor: Colors.teal.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            CheckboxListTile(
              value: chechBoxState,
              onChanged: (secildi) {
                setState(() {
                  chechBoxState = secildi!;
                });
              },
              activeColor: Colors.teal.shade900,
              title: const Text(
                "Chechbox Title",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "CheckBox Subtitle",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              secondary: Icon(
                Icons.add,
                color: Colors.teal.shade900,
                size: 35,
                shadows: [Shadow(color: Colors.purple.shade900)],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Sık tercih edilen şehirler",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            RadioListTile(
              secondary: const Icon(
                Icons.map,
                size: 40,
                color: Colors.teal,
              ),
              autofocus: false,
              value: "Ankara",
              groupValue: sehirGrubu,
              onChanged: (sehirDegeri) {
                setState(() {
                  sehirGrubu = sehirDegeri!;
                  debugPrint(sehirDegeri);
                });
              },
              subtitle: const Text(
                "RadioListTile Subtitle",
                style: TextStyle(fontSize: 17),
              ),
              title: const Text(
                "Ankara",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RadioListTile(
              secondary: const Icon(
                Icons.map,
                size: 40,
                color: Colors.teal,
              ),
              value: "İzmir",
              groupValue: sehirGrubu,
              onChanged: (sehirDegeri) {
                setState(() {
                  sehirGrubu = sehirDegeri!;
                  debugPrint(sehirDegeri);
                });
              },
              subtitle: const Text(
                "RadioListTile Subtitle",
                style: TextStyle(fontSize: 17),
              ),
              title: const Text(
                "İzmir",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RadioListTile(
              secondary: const Icon(
                Icons.map,
                size: 40,
                color: Colors.teal,
              ),
              value: "Bursa",
              groupValue: sehirGrubu,
              onChanged: (sehirDegeri) {
                setState(() {
                  sehirGrubu = sehirDegeri!;
                  debugPrint(sehirDegeri);
                });
              },
              subtitle: const Text(
                "RadioListTile Subtitle",
                style: TextStyle(fontSize: 17),
              ),
              title: const Text(
                "Bursa",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RadioListTile(
              secondary: const Icon(
                Icons.map,
                size: 40,
                color: Colors.teal,
              ),
              value: "İstanbul",
              groupValue: sehirGrubu,
              onChanged: (sehirDegeri) {
                setState(() {
                  sehirGrubu = sehirDegeri!;
                  debugPrint(sehirDegeri);
                });
              },
              subtitle: const Text(
                "RadioListTile Subtitle",
                style: TextStyle(fontSize: 17),
              ),
              title: const Text(
                "İstanbul",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SwitchListTile(
                autofocus: false,
                title: const Text(
                  "Şehir ve Mesafe tercihimi onaylıyorum.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                activeColor: Colors.teal.shade900,
                value: switchState,
                onChanged: (yeniDeger) {
                  setState(() {
                    switchState = yeniDeger;
                    print(switchState);
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButton(
              autofocus: true,
              items: sehirIsimleri.map((oankiSehir) {
                return DropdownMenuItem(
                  child: Text(oankiSehir),
                  value: oankiSehir,
                );
              }).toList(),
              onChanged: (sehirParametresi) {
                setState(() {
                  sehirTercihi = sehirParametresi!;
                });
              },
              value: sehirTercihi,
              hint: const Text(
                "Lütfen şehir seçiniz.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Lütfen mesafe seçiniz.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Slider(
              activeColor: Colors.teal.shade700,
              label: sliderDegeri.toString() + " km",
              value: sliderDegeri,
              onChanged: (yeniSliderDegeri) {
                setState(() {
                  sliderDegeri = yeniSliderDegeri;
                });
              },
              min: 50,
              max: 1000,
              divisions: 100,
              autofocus: false,
            ),
          ],
        ),
      ),
    );
  }
}
