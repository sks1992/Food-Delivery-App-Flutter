class Meal {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final int calories;
  final String fullDescription;
  final int grams;
  final int proteins;
  final int fats;
  final int crabs;

  Meal({
    required this.grams,
    required this.proteins,
    required this.fats,
    required this.crabs,
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.calories,
    required this.fullDescription,
  });
}
