class ProductModel {
  final int id;
  final String title;
  final double price;
  final List<String> images;

  const ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      images: List<String>.from(json['images']),
    );
  }
}