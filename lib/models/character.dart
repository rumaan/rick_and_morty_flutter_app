import 'package:rick_and_morty/models/parser.dart';

class Character extends Parser<Character> {
  // Model class for Character

  final String name;
  final int id;
  final String species;
  final String image;
  final String planet;

  Character({this.id, this.name, this.species, this.image, this.planet});

  /* Converter for Json object into Character type */

  @override
   Character fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Character(
        id: json['id'],
        name: json['name'],
        species: json['species'],
        image: json['image'],
        planet: json['planet']);
  }
}
