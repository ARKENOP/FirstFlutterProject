class Product {
  int id;
  String name;
  String description;
  String category;
  String image;
  num price;

//<editor-fold desc="Data Methods">
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
  });

  String getprice() => "${price.toStringAsFixed(2)}€";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          category == other.category &&
          image == other.image &&
          price == other.price);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      category.hashCode ^
      image.hashCode ^
      price.hashCode;

  @override
  String toString() {
    return 'Product{' +
        ' id: $id,' +
        ' name: $name,' +
        ' description: $description,' +
        ' category: $category,' +
        ' image: $image,' +
        ' price: $price,' +
        '}';
  }

  Product copyWith({
    int? id,
    String? name,
    String? description,
    String? category,
    String? image,
    num? price,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'description': this.description,
      'category': this.category,
      'image': this.image,
      'price': this.price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      image: map['image'] as String,
      price: map['price'] as num,
    );
  }

//</editor-fold>
}