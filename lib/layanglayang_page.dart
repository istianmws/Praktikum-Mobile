import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class LayangLayangPage extends StatelessWidget {
  final TextEditingController _d2Controller = TextEditingController();
  final TextEditingController _d1Controller   = TextEditingController();

  double _luasLayangLayang(double d1, double d2) {
    return 0.5 * d1 * d2;
  }

  double _kelilingLayangLayang(double d1, double d2) {
    double sisiMiring = sqrt(pow(d1 / 2, 2) + pow(d2 / 2, 2));
    return 2 * sisiMiring;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layang-Layang'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _d1Controller,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[1-4]?[0-9]{0,2}$|500'))],
                decoration: InputDecoration(
                  labelText: 'Panjang Diagonal Datar',
                ),
              ),
              TextField(
                controller: _d2Controller,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[1-2]?[0-9]{0,2}$|300'))],
                decoration: InputDecoration(
                  labelText: 'Panjang Diagonal Tegak',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  double d1 = double.tryParse(_d1Controller.text) ?? 0;
                  double d2 = double.tryParse(_d2Controller.text) ?? 0;
                  double luas = _luasLayangLayang(d1,d2);
                  double keliling = _kelilingLayangLayang(d1,d2);
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
                                size: Size(10+d1, 10+d2),
                                painter: TrianglePainter(d1,d2),
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
  final double d1;
  final double d2;

  TrianglePainter(this.d1, this.d2);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    double width = size.width;
    double height = size.height;

    Path path = Path()
      ..moveTo(width / 2, 0)
      ..lineTo(width, height / 2)
      ..lineTo(width / 2, height)
      ..lineTo(0, height / 2)
      ..lineTo(width / 2, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) =>
      d1 != oldDelegate.d1 || d2 != oldDelegate.d2;
}

