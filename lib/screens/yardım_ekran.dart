import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YardimScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yardım', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'İletişim Bilgileri:',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'E-posta: abc@gmail.com',
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.black87),
            ),
            Text(
              'Telefon: 123-456-7890',
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Text(
              'Kullanım Kılavuzu:',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Birinci adımı yapın.',
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '2. İkinci adımı yapın.',
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.black87),
            ),
            Text(
              '3. Üçüncü adımı yapın.',
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.black87),
            ),
            // Daha fazla adım ekleyebilirsiniz
          ],
        ),
      ),
      backgroundColor: Colors.lightGreen[50],
    );
  }
}
