import 'package:dress_market/cores/models/product.dart';

class Products {
  static List<Product> productList=[
    Product(id: 1, name: 'Dress 1', price: 29.99, stock: 10, sizes: ['S', 'M', 'L'], colors: ['Red', 'Blue']),
    Product(id: 2, name: 'Dress 2', price: 39.99, stock: 5, sizes: ['S', 'M'], colors: ['Green', 'Yellow']),
  ];
}