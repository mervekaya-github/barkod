import 'package:barkod_sistemi/screens/listeleme_ekran%C4%B1.dart';
import 'package:barkod_sistemi/screens/urun_listesi_ekran.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KediListesiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kedi Kategoriler', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMenuButton(
                context,
                'KURU MAMA',
                Icons.list, // Sembolik kuru mama ikonu
                ListelemeScreen(), // Bu buton için bir ekran tanımlanmadı
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'YAŞ MAMA',
                Icons.list, // Sembolik yaş mama ikonu
                ListelemeScreen(), // Bu buton için bir ekran tanımlanmadı
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'KUM',
                Icons.list, // Sembolik kum ikonu
                ListelemeScreen(), // Bu buton için bir ekran tanımlanmadı
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'ÖDÜL MAMASI',
                Icons.list, // Sembolik ödül maması ikonu
                ListelemeScreen(), // Bu buton için bir ekran tanımlanmadı
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'HIZLI MENÜ',
                Icons.list, // Sembolik hızlı menü ikonu
                ListelemeScreen(), // Bu buton için bir ekran tanımlanmadı
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.lightGreen[50],
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, IconData icon, Widget? screen) {
    return ElevatedButton(
      onPressed: screen != null
          ? () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      }
          : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightGreen[700],
        padding: EdgeInsets.all(24.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        fixedSize: Size(250, 80),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, size: 32, color: Colors.white),
          Text(
            title,
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
