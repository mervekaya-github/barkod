import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RaporScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RAPORLAR', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
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
                buildButton(context, 'Günlük Rapor Görüntüle', Icons.calendar_today),
                SizedBox(height: 16),
                buildButton(context, 'Haftalık Rapor Görüntüle', Icons.calendar_today),
                SizedBox(height: 16),
                buildButton(context, 'Aylık Rapor Görüntüle', Icons.calendar_today),
                SizedBox(height: 16),
                buildButton(context, 'Gider Bilgisi Gir', Icons.shopping_bag_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String text, IconData icon) {
    return Container(
      width: 200,
      height: 150,
      child: ElevatedButton(
        onPressed: () {
          // Butona tıklanınca yapılacak işlemler
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightGreen[400], // Buton arka plan rengi
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Buton köşeleri yuvarlatma
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 48),
            SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RaporScreen(),
  ));
}
