library id;
import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hello_bloc_wallpaper/data/model/search/serializer/serializers.dart';

part 'id.g.dart';

abstract class Id implements Built<Id, IdBuilder> {
  String get videoId;

  Id._();

  factory Id([updates(IdBuilder b)]) = _$Id;

  String toJson() {
    return json.encode(serializers.serializeWith(Id.serializer, this));
  }

  static Id fromJson(String jsonString) {
    return serializers.deserializeWith(Id.serializer, json.decode(jsonString));
  }

  static Serializer<Id> get serializer => _$idSerializer;
}