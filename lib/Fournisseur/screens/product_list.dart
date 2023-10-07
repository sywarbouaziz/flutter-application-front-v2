import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/models/product.dart';
import 'package:flutter_application_7/Fournisseur/screens/product_page.dart';



final List<Product> products = [
  Product(
    name: 'Product 1',
    description: 'This is the first product',
    imageUrl: 'https://picsum.photos/250?image=1',
  ),
  Product(
    name: 'Product 2',
    description: 'This is the second product',
    imageUrl: 'https://picsum.photos/250?image=2',
  ),
  Product(
    name: 'Product 3',
    description: 'This is the third product',
    imageUrl: 'https://picsum.photos/250?image=3',
  ),
];

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.deepPurple[200],

        centerTitle: true,
        title: Text(
          'Product List',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return 
          Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(product.imageUrl),
              ),
              title: Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                product.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to product details page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
