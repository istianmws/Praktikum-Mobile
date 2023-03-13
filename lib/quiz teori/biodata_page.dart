import 'package:flutter/material.dart';
class BiodataPage extends StatelessWidget {
  BiodataPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25,),
            //Nama Foto sebagai Profile
            Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Halo, Selamat Datang!',
                        style: TextStyle(
                          color: Colors.black45,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Istian Muhammad',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('ava.png'),
                        fit: BoxFit.contain
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            //detail user
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal[100],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('istian.png'),
                              fit: BoxFit.fitWidth
                          ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          )
                      ),
                    ),
                    SizedBox(width: 20),

                    //detail nim dll
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                          ) ,
                          'Istian Muhammad WS',
                        ),

                        SizedBox(height: 10),
                        Text('123190107 | TPM B'),

                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.teal[700],
                          ),
                          child: Center(
                            child: Container(
                                child: Text(
                                  'Kenal lebih dekat!',
                                  style: TextStyle(color: Colors.white),
                                )
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),

            //dekorasi saja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    border: InputBorder.none,
                    hintText: 'Cari Hoby mwehehe'
                  ),
                  onChanged: (value) {
                    // Menerapkan kata kunci pencarian ke fungsi filterItems
                    // filterHobi(value);
                  },
                ),
              ),
            ),

            SizedBox(height: 25),

            //dekorasi saja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.gamepad),
                      border: InputBorder.none,
                      hintText: 'Bermain Game'
                  ),
                  onChanged: (value) {
                    // Menerapkan kata kunci pencarian ke fungsi filterItems
                    // filterHobi(value);
                  },
                ),
              ),
            ),

            SizedBox(height: 25),

            //dekorasi saja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.hiking_rounded),
                      border: InputBorder.none,
                      hintText: 'Mendaki Gunung'
                  ),
                  onChanged: (value) {
                    // Menerapkan kata kunci pencarian ke fungsi filterItems
                    // filterHobi(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 25),

            //dekorasi saja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.menu_book_rounded),
                      border: InputBorder.none,
                      hintText: 'Membaca Buku Sejarah'
                  ),
                  onChanged: (value) {
                    // Menerapkan kata kunci pencarian ke fungsi filterItems
                    // filterHobi(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 25),

            //dekorasi saja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.sports_basketball),
                      border: InputBorder.none,
                      hintText: 'Bermain Basket'
                  ),
                  onChanged: (value) {
                    // Menerapkan kata kunci pencarian ke fungsi filterItems
                    // filterHobi(value);
                  },
                ),
              ),
            ),
          ],
        ) ,
        
      ),
    );
  }
}
