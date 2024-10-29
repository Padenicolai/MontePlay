import '../database.dart';

class ViewUsuariosadminTable extends SupabaseTable<ViewUsuariosadminRow> {
  @override
  String get tableName => 'view_usuariosadmin';

  @override
  ViewUsuariosadminRow createRow(Map<String, dynamic> data) =>
      ViewUsuariosadminRow(data);
}

class ViewUsuariosadminRow extends SupabaseDataRow {
  ViewUsuariosadminRow(super.data);

  @override
  SupabaseTable get table => ViewUsuariosadminTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get usuariosId => getField<int>('usuarios_id');
  set usuariosId(int? value) => setField<int>('usuarios_id', value);

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
