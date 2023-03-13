import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class SegitigaSikuSikuPage extends StatelessWidget {
  final TextEditingController _tinggiController = TextEditingController();
  final TextEditingController _alasController   = TextEditingController();

  double _luasSegitigaSikuSiku(double alas, double tinggi) {
    return 0.5 * alas * tinggi;
  }

  double _kelilingSegitigaSikuSiku(double alas, double tinggi) {
    double sisiMiring = sqrt(alas * alas + tinggi * tinggi);
    return alas + tinggi + sisiMiring;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segitiga Siku Siku'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _alasController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[1-4]?[0-9]{0,2}$|500'))],
                decoration: InputDecoration(
                  labelText: 'Panjang Alas',
                ),
              ),
              TextField(
                controller: _tinggiController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[1-2]?[0-9]{0,2}$|300'))],
                decoration: InputDecoration(
                  labelText: 'Panjang Tinggi',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  double alas = double.tryParse(_alasController.text) ?? 0;
                  double tinggi = double.tryParse(_tinggiController.text) ?? 0;
                  double luas = _luasSegitigaSikuSiku(alas,tinggi);
                  double keliling = _kelilingSegitigaSikuSiku(alas,tinggi);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Hasil Perhitungan'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Luas: $luas'),
                            Text('Keliling: $keliling'),
                            SizedBox(height: 16),
                            Center(
                              child: CustomPaint(
                              size: Size(10+alas, 10+tinggi),
                              painter: TrianglePainter(alas,tinggi),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text('Hitung'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class TrianglePainter extends CustomPainter {
  final double alas;
  final double tinggi;

  TrianglePainter(this.alas, this.tinggi);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(alas, 0)
      ..lineTo(0, tinggi)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) =>
      alas != oldDelegate.alas || tinggi != oldDelegate.tinggi;
}

