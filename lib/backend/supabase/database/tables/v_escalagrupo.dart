import '../database.dart';

class VEscalagrupoTable extends SupabaseTable<VEscalagrupoRow> {
  @override
  String get tableName => 'v_escalagrupo';

  @override
  VEscalagrupoRow createRow(Map<String, dynamic> data) => VEscalagrupoRow(data);
}

class VEscalagrupoRow extends SupabaseDataRow {
  VEscalagrupoRow(super.data);

  @override
  SupabaseTable get table => VEscalagrupoTable();

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get nomeGrupo => getField<String>('nome_grupo');
  set nomeGrupo(String? value) => setField<String>('nome_grupo', value);

  int? get idgrupo => getField<int>('idgrupo');
  set idgrupo(int? value) => setField<int>('idgrupo', value);
}
