import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SatisScreen extends StatefulWidget {
  @override
  _SatisScreenState createState() => _SatisScreenState();
}

class _SatisScreenState extends State<SatisScreen> {
  String barkod = '';
  List<TableRow> urunler = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satış', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Barkod',
                      labelStyle: GoogleFonts.roboto(color: Colors.lightGreen[700], fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onChanged: (value) {
                      barkod = value;
                    },
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (barkod.isNotEmpty) {
                        urunler.add(
                          TableRow(
                            children: [
                              TableCell(
                                child: Center(child: Text('RC Kitten 1 kg', style: GoogleFonts.roboto(fontSize: 16))),
                              ),
                              TableCell(
                                child: Center(child: Text('200', style: GoogleFonts.roboto(fontSize: 16))),
                              ),
                              TableCell(
                                child: Center(child: Text('1', style: GoogleFonts.roboto(fontSize: 16))),
                              ),
                              TableCell(
                                child: Center(child: Text('200', style: GoogleFonts.roboto(fontSize: 16))),
                              ),
                            ],
                          ),
                        );
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen[700],
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text('Ara', style: GoogleFonts.roboto(color: Colors.white, fontSize: 18)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.lightGreen[100]),
                  children: [
                    TableCell(
                      child: Center(child: Text('Ürün Adı', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold))),
                    ),
                    TableCell(
                      child: Center(child: Text('Fiyat', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold))),
                    ),
                    TableCell(
                      child: Center(child: Text('Adet', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold))),
                    ),
                    TableCell(
                      child: Center(child: Text('Toplam', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
                ...urunler,
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Toplam Tutar:',
                  style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  alignment: Alignment.center,
                  child: Text('', style: GoogleFonts.roboto(fontSize: 16)), // Toplam tutar buraya dinamik olarak gelecek
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Satışı tamamla butonuna basıldığında yapılacak işlem
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen[700],
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text('SATIŞI TAMAMLA', style: GoogleFonts.roboto(color: Colors.white, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightGreen[50],
    );
  }
}
