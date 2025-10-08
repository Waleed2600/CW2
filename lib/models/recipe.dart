class Recipe {
  final String id;
  final String name;
  final List<String> ingredients;
  final String instructions;
  bool isFavorite;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
    this.isFavorite = false,
  });

  Recipe copyWith({
    String? id,
    String? name,
    List<String>? ingredients,
    String? instructions,
    bool? isFavorite,
  }) {
    return Recipe(
      id: id ?? this.id,
      name: name ?? this.name,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}