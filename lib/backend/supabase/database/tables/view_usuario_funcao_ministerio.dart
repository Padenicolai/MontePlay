import '../database.dart';

class ViewUsuarioFuncaoMinisterioTable
    extends SupabaseTable<ViewUsuarioFuncaoMinisterioRow> {
  @override
  String get tableName => 'view_usuario_funcao_ministerio';

  @override
  ViewUsuarioFuncaoMinisterioRow createRow(Map<String, dynamic> data) =>
      ViewUsuarioFuncaoMinisterioRow(data);
}

class ViewUsuarioFuncaoMinisterioRow extends SupabaseDataRow {
  ViewUsuarioFuncaoMinisterioRow(super.data);

  @override
  SupabaseTable get table => ViewUsuarioFuncaoMinisterioTable();

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get ministerio => getField<String>('ministerio');
  set ministerio(String? value) => setField<String>('ministerio', value);

  String? get icone => getField<String>('icone');
  set icone(String? value) => setField<String>('icone', value);

  int? get idministerio => getField<int>('idministerio');
  set idministerio(int? value) => setField<int>('idministerio', value);

  int? get grupo => getField<int>('grupo');
  set grupo(int? value) => setField<int>('grupo', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
