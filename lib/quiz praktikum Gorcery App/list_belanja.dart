import 'package:flutter/material.dart';



import 'detail_belanja.dart';
import 'groceries.dart';
class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);


  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Grocery App"),
          ),
          actions: [
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.exit_to_app_rounded)),
          ],
        ),
        body: ListView.builder(itemBuilder: (context , index){
            final Groceries produk = groceryList[index];
            return Card(
                color: Colors.teal[100],
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return DetailPageProduk(produk: produk);
                      })
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      padding: EdgeInsets.all(8),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                        image: DecorationImage(
                          image: NetworkImage(produk.productImageUrls[0]),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          produk.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'by :' + produk.storeName,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,

                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ),
            );
          },itemCount: groceryList.length,
          ),
        ),
      );
  }
}
