class Character {
  // Model class for Character

  final String _name;
  final int _id;
  final String _species;
  final String _image;
  final String _planet;

  String get name => _name;

  int get id => _id;

  String get species => _species;

  String get image => _image;

  String get planet => _planet;

  Character(this._id, this._name, this._species, this._image, this._planet);
}


final List<Character> characterList = [
  Character(1, "Morty", "Human", "test_url", "earth"),
  Character(2, "Rick", "Human", "test_url", "earth"),
  Character(3, "Jerry Smith", "Human", "test_url", "earth")
];

