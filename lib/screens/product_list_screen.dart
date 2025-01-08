import 'package:flutter/material.dart';

class Product {
  final String image;
  final String name;
  final double price;
  final String discount;
  final List<String> tags;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.discount,
    required this.tags,
  });
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      image: 'https://picsum.photos/200',
      name: '商品1',
      price: 99.9,
      discount: '8折',
      tags: ['新品', '热卖'],
    ),
    Product(
      image: 'https://picsum.photos/201',
      name: '商品2',
      price: 199.9,
      discount: '满200减50',
      tags: ['限时'],
    ),
    Product(
      image: 'https://picsum.photos/202',
      name: '商品3',
      price: 299.9,
      discount: '买一送一',
      tags: ['爆款'],
    ),
  ];

  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    product.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '¥${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          product.discount,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                        Wrap(
                          spacing: 4,
                          children: product.tags
                              .map((tag) => Chip(
                                    label: Text(tag),
                                    backgroundColor: WidgetStateColor.resolveWith((states) => Colors.blue[50]!),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
