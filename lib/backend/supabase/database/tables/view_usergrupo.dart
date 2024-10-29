import '../database.dart';

class ViewUsergrupoTable extends SupabaseTable<ViewUsergrupoRow> {
  @override
  String get tableName => 'view_usergrupo';

  @override
  ViewUsergrupoRow createRow(Map<String, dynamic> data) =>
      ViewUsergrupoRow(data);
}

class ViewUsergrupoRow extends SupabaseDataRow {
  ViewUsergrupoRow(super.data);

  @override
  SupabaseTable get table => ViewUsergrupoTable();

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  int? get usuariosId => getField<int>('usuarios_id');
  set usuariosId(int? value) => setField<int>('usuarios_id', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get nomeGrupo => getField<String>('nomeGrupo');
  set nomeGrupo(String? value) => setField<String>('nomeGrupo', value);

  int? get idgrupo => getField<int>('idgrupo');
  set idgrupo(int? value) => setField<int>('idgrupo', value);
}
