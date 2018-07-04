/* API Endpoints */

import 'dart:convert';

import 'package:rick_and_morty/models/character.dart';
import 'package:rick_and_morty/models/episode.dart';
import 'package:rick_and_morty/models/location.dart';

const CHARACTERS = "https://rickandmortyapi.com/api/character";
const EPISODES = "https://rickandmortyapi.com/api/episode";
const LOCATIONS = "https://rickandmortyapi.com/api/location";

/// Generic Method to parse the json string[str] into models[Object]
///
Object parse<T>(String str) {
  final json = jsonDecode(str);
  // FIXME: apparently is doesn't work here.
  if (T.toString() == Character().runtimeType.toString()) {
    return new Character().fromJson(json);
  } else if (T.toString() == Episode().runtimeType.toString()) {
    return new Episode().fromJson(json);
  } else if (T.toString() == Location().runtimeType.toString()) {
    return new Location().fromJson(json);
  } else
    throw CastError();
}

/*
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
*/
