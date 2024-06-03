import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YeniUrunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YENİ ÜRÜN EKLE', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            color: Colors.lightGreen[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildTextField('Barkod'),
                SizedBox(height: 10),
                buildTextField('Ürün İsmi'),
                SizedBox(height: 10),
                buildTextField('Fiyat'),
                SizedBox(height: 10),
                buildTextField('Adet'),
                SizedBox(height: 10),
                buildTextField('Kategori'),
                SizedBox(height: 10),
                buildTextField('Alt Kategori'),
                SizedBox(height: 35),
                Center(
                  child: SizedBox(
                    width: 300, // Buton genişliği
                    child: ElevatedButton(
                      onPressed: () {
                        // Ürün ekleme işlemi
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen[400], // Buton arka plan rengi
                      ),
                      child: Text(
                        'Ürün Ekle',
                        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500),
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

  Widget buildTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: YeniUrunScreen(),
  ));
}
