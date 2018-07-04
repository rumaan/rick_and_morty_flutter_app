import 'package:rick_and_morty/models/parser.dart';

class Episode extends Parser<Episode>{
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters; // Character URLS
  final String created;

  Episode({this.id,
    this.name,
    this.airDate,
    this.episode,
    this.characters,
    this.created});

  @override
  Episode fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Episode(
        id: json['id'],
        name: json['name'],
        airDate: json['air_date'],
        episode: json['episode'],
        characters: List<String>.from(json['characters']));
  }
}