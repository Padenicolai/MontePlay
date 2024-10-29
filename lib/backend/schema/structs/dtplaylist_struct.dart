// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtplaylistStruct extends BaseStruct {
  DtplaylistStruct({
    String? titulo,
    String? cantor,
    String? videoid,
  })  : _titulo = titulo,
        _cantor = cantor,
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

  // "videoid" field.
  String? _videoid;
  String get videoid => _videoid ?? '';
  set videoid(String? val) => _videoid = val;

  bool hasVideoid() => _videoid != null;

  static DtplaylistStruct fromMap(Map<String, dynamic> data) =>
      DtplaylistStruct(
        titulo: data['titulo'] as String?,
        cantor: data['cantor'] as String?,
        videoid: data['videoid'] as String?,
      );

  static DtplaylistStruct? maybeFromMap(dynamic data) => data is Map
      ? DtplaylistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titulo': _titulo,
        'cantor': _cantor,
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
        'videoid': serializeParam(
          _videoid,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtplaylistStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtplaylistStruct(
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
        videoid: deserializeParam(
          data['videoid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtplaylistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtplaylistStruct &&
        titulo == other.titulo &&
        cantor == other.cantor &&
        videoid == other.videoid;
  }

  @override
  int get hashCode => const ListEquality().hash([titulo, cantor, videoid]);
}

DtplaylistStruct createDtplaylistStruct({
  String? titulo,
  String? cantor,
  String? videoid,
}) =>
    DtplaylistStruct(
      titulo: titulo,
      cantor: cantor,
      videoid: videoid,
    );
