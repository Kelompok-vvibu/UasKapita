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
              "2. Tenaga kesehatan (nakes) di fasyankes akan melakukan screening suspect COVID-19:"),
          const Text(
              "a. Jika memenuhi kriteria suspect COVID-19, maka Anda akan dirujuk ke salah satu rumah sakit (RS) rujukan yang siap untuk penanganan COVID19\nb.Jika tidak memenuhi kriteria suspect COVID-19, maka Anda akan dirawat inap atau rawat jalan tergantung diagnosa dan keputusan dokter fasyankes."),
          const Text(
              "3. Jika anda memenuhi kriteria Suspect COVID-19 akan diantar ke RS rujukan menggunakan ambulan fasyankes didampingi oleh nakes yang menggunakan alat pelindung diri (APD)."),
          const Text(
              "4. Di RS rujukan, akan dilakukan pengambilan spesimen untuk pemeriksaan laboratorium dan dirawat di ruang isolasi."),
          const Text(
              "5. Spesimen akan dikirim ke Badan Penelitian dan Pengembangan Kesehatan (Balitbangkes) di Jakarta. Hasil pemeriksaan pertama akan keluar dalam 24 jam setelah spesimen diterima. "),
          const Text(
              "a. Jika hasilnya positif, \n  i. maka Anda akan dinyatakan sebagai penderita COVID-19.\n  ii. Sampel akan diambil setiap hari\n iii. Anda akan dikeluarkan dari ruang isolasi jika pemeriksaan sampel 2 (dua) kali berturut-turut hasilnya negatif\nb. Jika hasilnya negatif, Anda akan dirawat sesuai dengan penyebab penyakit. "),
          const Text("JIKA ANDA SEHAT, namun"),
          const Text(
              "    1. Ada riwayat perjalanan 14 hari yang lalu ke negara terjangkit COVID-19, ATAU\n   2. Merasa pernah kontak dengan penderita COVID-19,"),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

appbarProtokol() {
  return PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Text(
        "Protocol Indonesia Covid-19",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
