import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get usuariosId => getField<int>('usuarios_id')!;
  set usuariosId(int value) => setField<int>('usuarios_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get isAdmin => getField<bool>('isAdmin');
  set isAdmin(bool? value) => setField<bool>('isAdmin', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);

  DateTime? get nascimento => getField<DateTime>('nascimento');
  set nascimento(DateTime? value) => setField<DateTime>('nascimento', value);

  String? get eMail => getField<String>('e-mail');
  set eMail(String? value) => setField<String>('e-mail', value);
}
