import 'package:rick_and_morty/models/parser.dart';

class Location extends Parser<Location> {
  // Model class Locations
  final int id;
  final String name;
  final String type;
  final String dimension;
  final List<String> residents; // Character URLS
  final String url;
  final String created;

  Location({this.id, this.name, this.type, this.dimension, this.residents,
    this.url, this.created});

  @override
  Location fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Location(
        id: json['id'],
        name: json['name'],
        type: json['type'],
        dimension: json['dimension'],
        created: json['created'],
        // fixme: This messes up the Refactor in IDE
        residents: List<String>.from(json['residents'])
    );
  }
}