import 'package:flutter/material.dart';

import 'groceries.dart';

class DetailPageProduk extends StatefulWidget {
  final Groceries produk;
  const DetailPageProduk({Key? key, required this.produk}) : super(key: key);

  @override
  State<DetailPageProduk> createState() => _DetailPageProdukState();
}

class _DetailPageProdukState extends State<DetailPageProduk> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.produk.name),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: (isFavorite)
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 280,
                      padding: const EdgeInsets.fromLTRB(5,10,5,10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          for (var i = 0; i < widget.produk.productImageUrls.length ; i++)
                            Container(
                              padding: const EdgeInsets.only(left: 10, right: 5),
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.network(
                                widget.produk.productImageUrls[i],
                                fit: BoxFit.cover,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              icon: Icon(Icons.store_mall_directory_rounded),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              labelText: widget.produk.storeName,
                              labelStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(height: 7),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              icon: Icon(Icons.attach_money_rounded),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              labelText: 'Rp ' + widget.produk.price,
                              labelStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(height: 7),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              icon: Icon(Icons.numbers_rounded),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              labelText: widget.produk.stock + ' Buah',
                              labelStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(height: 7),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              icon: Icon(Icons.discount_rounded),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              labelText: widget.produk.discount,
                              labelStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(height: 7),
                          SizedBox(
                            height: 50,
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                icon: Icon(Icons.description_rounded),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,

                                labelText: widget.produk.description,
                                labelStyle: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
