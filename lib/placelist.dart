import 'package:flutter/material.dart';
import 'detail.dart';
import 'groceries.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryList.length,
      itemBuilder: (BuildContext context, int index) {
        return GroceriesCard(groceriesList: groceryList[index]);
      },
    );
  }
}

class GroceriesCard extends StatelessWidget {
  final Groceries groceriesList;
  GroceriesCard({Key? key, required this.groceriesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 500,
                    height: 200,
                    child: Image.network(groceriesList.productImageUrls[1]),
                  ),
                  Text(
                    groceriesList.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    groceriesList.storeName,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  //SizedBox(height: 16.0),
                  //Text(groceriesList.),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        String a = groceriesList.name;
        String b = groceriesList.description;
        String c = groceriesList.price;
        String d = groceriesList.stock;
        String e = groceriesList.discount;
        String f = groceriesList.storeName;
        String g = groceriesList.productUrl;
        String h = groceriesList.productImageUrls[1];
        String i = groceriesList.reviewAverage;

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailProduk(
                  nama: a,
                  deskripsi: b,
                  harga: c,
                  stok: d,
                  diskon: e,
                  namaToko: f,
                  produkUrl: g,
                  produkGambarUrl: h,
                  review: i)),
        );
      },
    );
  }
}
