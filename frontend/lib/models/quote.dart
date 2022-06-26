import 'dart:ffi';

class Quote {
  final String description;
  final String username;
  final bool liked;
  final String id;

  const Quote({
    required this.id,
    required this.description,
    required this.username,
    required this.liked,
  });

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
        description: json['description'],
        id: json['id'],
        username: json['username'],
        liked: json['liked']);
  }
}
