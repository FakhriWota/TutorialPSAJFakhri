import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double productPrice;
  final VoidCallback onPressed;

  const ProductItem({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: Column(
          children: [
            Image.network(imageUrl),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(productName),
            ),
            Text('\$$productPrice'),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewProduct extends StatelessWidget {
  const NewProduct({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            children: List.generate(
              data.length,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: ProductItem(
                  imageUrl: data[index],
                  productName: 'Product ${index + 1}',
                  productPrice: 100 * (index + 1),
                  onPressed: () {
                    // Handle product item press here.
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Sample Data
const data = [
  "https://5.imimg.com/data5/SELLER/Default/2022/9/VK/FQ/EG/17769549/ap0015.jpeg",
  "https://5.imimg.com/data5/SELLER/Default/2022/9/RL/ZT/GR/17769549/bkt001-5347-1000x1000.jpeg",
  "https://5.imimg.com/data5/SELLER/Default/2022/9/TE/IH/KW/17769549/bkt00125-1000x1000.jpeg",
  // ... (your other image URLs)
  "https://5.imimg.com/data5/SELLER/Default/2022/9/OZ/MM/UW/17769549/bkt0041--1000x1000.jpg"
];
