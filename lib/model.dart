class Animal {
  int? id;
  String? category;
  String? name;
  String? details;

  Animal({
    this.id,
    this.category,
    this.name,
    this.details,
  });

  Animal.fromMap(Map map) {
    id = map[id];
    category = map[category];
    name = map[name];
    details = map[details];
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'Category': category,
      'Name': name,
      'Details': details,
    };
  }
}
