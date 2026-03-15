class Product {
  final int id;
  final String name;
  final String? description;
  final int price;
  final int? promotionPrice;
  final String? image;
  final String? category;
  final String? mark;
  final int stock;
  final double? rating;
  final List<String>? sizes;
  final List<String>? colors;
  final List<String>? ads;
  const Product({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.promotionPrice,
    this.image,
    this.category,
    this.mark,
    required this.stock,
    this.rating,
     this.sizes,
     this.colors,
     this.ads
  });
}