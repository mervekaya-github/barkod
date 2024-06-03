import 'package:barkod_sistemi/screens/diger_liste.dart';
import 'package:barkod_sistemi/screens/kedi_liste.dart';
import 'package:barkod_sistemi/screens/kopek_liste.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UrunListesiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ÜRÜN LİSTESİ', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
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
                'KEDİ',
                Icons.pets, // Kedi ikonu
                KediListesiScreen(),
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'KÖPEK',
                Icons.pets, // Köpek ikonu
                DogListesiScreen(),
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'KUŞ',
                Icons.pets, // Kuş ikonu
                DigerListelerScreen(),
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'KEMİRGEN',
                Icons.pets, // Kemirgen ikonu (IconData olarak mevcut olmayabilir, sembolik)
                DigerListelerScreen(),
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'BALIK',
                Icons.pets, // Balık ikonu
                DigerListelerScreen(),
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'AKVARYUM',
                Icons.pets, // Akvaryum ikonu (IconData olarak mevcut olmayabilir, sembolik)
                DigerListelerScreen(),
              ),
              SizedBox(height: 20),
              _buildMenuButton(
                context,
                'DİĞER',
                Icons.pets, // Diğer ikonu
                DigerListelerScreen(),
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
        fixedSize: Size(230, 70),
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
          Icon(icon, size: 32, color: Colors.white),
        ],
      ),
    );
  }
}
