import 'package:barkod_sistemi/screens/urun_detay_ekran.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListelemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürün Listesi', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            color: Colors.lightGreen[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text(
                      'Ürünler burada listelenecek...',
                      style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: SizedBox(
                    width: double.infinity, // Buton genişliğini ekran genişliğine ayarla
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UrunDetayScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen[400], // Buton arka plan rengi
                        padding: EdgeInsets.symmetric(vertical: 16), // Buton yüksekliğini ayarla
                      ),
                      child: Text(
                        'ÜRÜN DETAY BİLGİSİ \n'
                            'GÖRÜNTÜLEME VE GÜNCELLEME',
                        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
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


void main() {
  runApp(MaterialApp(
    home: ListelemeScreen(),
  ));
}
