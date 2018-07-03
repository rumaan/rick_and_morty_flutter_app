import 'dart:convert';

import 'package:rick_and_morty/models.dart';

Character parseCharacter(String str) {
  final json = jsonDecode(str);
  Character character = Character.fromJson(json);
  return character;
}

Episode parseEpisode(String str) {
  final json = jsonDecode(str);
  Episode episode = Episode.fromJson(json);
  return episode;
}

Location parseLocation(String str) {
  final json = jsonDecode(str);
  Location location = Location.fromJson(json);
  return location;
}
