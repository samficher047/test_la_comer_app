class ProductModel {
  final int id;
  final String name;
  final double price;
  final String unit;
  final String image;
  final String category;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.unit,
    required this.image,
    required this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      unit: json['unit'],
      image: json['image'],
      category: json['category'],
    );
  }
}