import 'package:barkod_sistemi/screens/raporlar_ekran.dart';
import 'package:barkod_sistemi/screens/satis_ekran.dart';
import 'package:barkod_sistemi/screens/urun_listesi_ekran.dart';
import 'package:barkod_sistemi/screens/yard%C4%B1m_ekran.dart';
import 'package:barkod_sistemi/screens/yeni_urun_ekran.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Google Fonts ekleyelim

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENÜ', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildMenuButton(
                    context,
                    'ÜRÜN LİSTESİ',
                    Icons.list_alt_outlined,
                    UrunListesiScreen(),
                  ),
                  _buildMenuButton(
                    context,
                    'SATIŞ',
                    Icons.shopping_cart,
                    SatisScreen(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildMenuButton(
                    context,
                    'RAPORLAR',
                    Icons.bar_chart,
                     RaporScreen(), // Buton işlevi tanımlanmadığı için null bıraktım
                  ),
                  _buildMenuButton(
                    context,
                    'YARDIM',
                    Icons.help,
                    YardimScreen(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildMenuButton(
                    context,
                    'YENİ ÜRÜN EKLE',
                    Icons.add_box,
                    YeniUrunScreen(), // Buton işlevi tanımlanmadığı için null bıraktım
                  ),
                ],
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
        fixedSize: Size(160, 160),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.white),
          SizedBox(height: 10),
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
