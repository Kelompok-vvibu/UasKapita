import 'package:flutter/material.dart';

class Protokol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarProtokol(),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Image(
            image: AssetImage('asset/protocolCovid.png'),
          ),
          Center(child: const Text("PENANGANAN COVID-19")),
          Center(child: const Text('PROTOKOL KESEHATAN')),
          const Text('JIKA ANDA MERASA TIDAK SEHAT'),
          const Text(
              "1. Jika anda merasa tidak sehat dengan kriteria:\n a. Demam 38 derajat Celcius, dan\n b. Batuk/pilek"),
          const Text(
              "istirahatlah yang cukup di rumah dan bila perlu minum Bila keluhan berlanjut, atau disertai dengan kesulitan bernafas (sesak atau nafas cepat), segera berobat ke fasilitas pelayanan kesehatan (fasyankes) "),
          const Text(
              "Pada saat berobat ke fasyankes, Anda harus lakukan tindakan berikut:"),
          const Text(
              " a. Gunakan masker\n b. Apabila tidak memiliki masker, ikuti etika batuk/bersin yang benar dengan cara menutup mulut dan hidung dengan tisu atau punggung lengan\n c. Usahakan tidak menggunakan transportasi massal"),
          const Text(
              "\n 2. Tenaga kesehatan (nakes) di fasyankes akan melakukan screening suspect COVID-19:"),
          const Text(
              "a. Jika memenuhi kriteria suspect COVID-19, maka Anda akan dirujuk ke salah satu rumah sakit (RS) rujukan yang siap untuk penanganan COVID19\nb.Jika tidak memenuhi kriteria suspect COVID-19, maka Anda akan dirawat inap atau rawat jalan tergantung diagnosa dan keputusan dokter fasyankes."),
          const Text(
              "\n 3. Jika anda memenuhi kriteria Suspect COVID-19 akan diantar ke RS rujukan menggunakan ambulan fasyankes didampingi oleh nakes yang menggunakan alat pelindung diri (APD)."),
          const Text(
              "\n 4. Di RS rujukan, akan dilakukan pengambilan spesimen untuk pemeriksaan laboratorium dan dirawat di ruang isolasi."),
          const Text(
              "\n 5. Spesimen akan dikirim ke Badan Penelitian dan Pengembangan Kesehatan (Balitbangkes) di Jakarta. Hasil pemeriksaan pertama akan keluar dalam 24 jam setelah spesimen diterima. "),
          const Text(
              "a. Jika hasilnya positif, \n  i. maka Anda akan dinyatakan sebagai penderita COVID-19.\n  ii. Sampel akan diambil setiap hari\n iii. Anda akan dikeluarkan dari ruang isolasi jika pemeriksaan sampel 2 (dua) kali berturut-turut hasilnya negatif\nb. Jika hasilnya negatif, Anda akan dirawat sesuai dengan penyebab penyakit. "),
          const Text("JIKA ANDA SEHAT, namun"),
          const Text(
              "    1. Ada riwayat perjalanan 14 hari yang lalu ke negara terjangkit COVID-19, ATAU\n   2. Merasa pernah kontak dengan penderita COVID-19,"),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Material(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                splashColor: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'Saya mengerti',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

appbarProtokol() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          "Protocol Indonesia Covid-19",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
