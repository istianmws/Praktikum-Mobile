import 'package:flutter/material.dart';



import 'detail_belanja.dart';
import 'groceries.dart';class ListPage extends StatefulWidget {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //image: DecorationImage(
                          //image: NetworkImage(produk.productImageUrls[0]),
                          //fit: BoxFit.cover
                        //
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          for (var i = 0; i < produk.productImageUrls.length ; i++)
                            Container(
                              padding: const EdgeInsets.only(left: 10, right: 5),
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.network(
                                produk.productImageUrls[i],
                                fit: BoxFit.cover,
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'By ${produk.storeName}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              produk.name,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.teal[200],
                              ),
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
