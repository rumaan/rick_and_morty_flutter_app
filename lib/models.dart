class Character {
  // Model class for Character

  final String name;
  final int id;
  final String species;
  final String image;
  final String planet;

  Character({this.id, this.name, this.species, this.image, this.planet});

  /* Converter for Json object into Character type */
  factory Character.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Character(
        id: json['id'],
        name: json['name'],
        species: json['species'],
        image: json['image'],
        planet: json['planet']);
  }
}

class Location {
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

  factory Location.fromJson(Map<String, dynamic> json) {
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

class Episode {
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

  factory Episode.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Episode(
        id: json['id'],
        name: json['name'],
        airDate: json['air_date'],
        episode: json['episode'],
        characters: List<String>.from(json['characters']));
  }
}

final List<Character> characterList = [
  Character(
      id: 1,
      name: "Rick",
      species: "Human",
      image: "test_image",
      planet: "Planet")
];
