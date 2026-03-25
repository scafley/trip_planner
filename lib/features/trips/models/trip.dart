class TripItem {
  final String id;
  final String name;
  final String? description;
  final DateTime createdAt;

  const TripItem({
    required this.id,
    required this.name,
    this.description,
    required this.createdAt,
  });
}
