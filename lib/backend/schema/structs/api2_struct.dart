// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Api2Struct extends BaseStruct {
  Api2Struct({
    String? titulo,
    String? cantor,
    String? thumbnails,
    String? videoid,
  })  : _titulo = titulo,
        _cantor = cantor,
        _thumbnails = thumbnails,
        _videoid = videoid;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "cantor" field.
  String? _cantor;
  String get cantor => _cantor ?? '';
  set cantor(String? val) => _cantor = val;

  bool hasCantor() => _cantor != null;

  // "thumbnails" field.
  String? _thumbnails;
  String get thumbnails => _thumbnails ?? '';
  set thumbnails(String? val) => _thumbnails = val;

  bool hasThumbnails() => _thumbnails != null;

  // "videoid" field.
  String? _videoid;
  String get videoid => _videoid ?? '';
  set videoid(String? val) => _videoid = val;

  bool hasVideoid() => _videoid != null;

  static Api2Struct fromMap(Map<String, dynamic> data) => Api2Struct(
        titulo: data['titulo'] as String?,
        cantor: data['cantor'] as String?,
        thumbnails: data['thumbnails'] as String?,
        videoid: data['videoid'] as String?,
      );

  static Api2Struct? maybeFromMap(dynamic data) =>
      data is Map ? Api2Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'titulo': _titulo,
        'cantor': _cantor,
        'thumbnails': _thumbnails,
        'videoid': _videoid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'cantor': serializeParam(
          _cantor,
          ParamType.String,
        ),
        'thumbnails': serializeParam(
          _thumbnails,
          ParamType.String,
        ),
        'videoid': serializeParam(
          _videoid,
          ParamType.String,
        ),
      }.withoutNulls;

  static Api2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Api2Struct(
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        cantor: deserializeParam(
          data['cantor'],
          ParamType.String,
          false,
        ),
        thumbnails: deserializeParam(
          data['thumbnails'],
          ParamType.String,
          false,
        ),
        videoid: deserializeParam(
          data['videoid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Api2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Api2Struct &&
        titulo == other.titulo &&
        cantor == other.cantor &&
        thumbnails == other.thumbnails &&
        videoid == other.videoid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([titulo, cantor, thumbnails, videoid]);
}

Api2Struct createApi2Struct({
  String? titulo,
  String? cantor,
  String? thumbnails,
  String? videoid,
}) =>
    Api2Struct(
      titulo: titulo,
      cantor: cantor,
      thumbnails: thumbnails,
      videoid: videoid,
    );
