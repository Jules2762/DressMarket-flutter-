class Product {
  final int id;
  final String name;
  final String? description;
  final double price;
  final String? image;
  final String? category;
  final int stock;
  final double? rating;
  final List<String> sizes;
  final List<String> colors;
  const Product({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.image,
    this.category,
    required this.stock,
    this.rating,
    required this.sizes,
    required this.colors,
  });
}