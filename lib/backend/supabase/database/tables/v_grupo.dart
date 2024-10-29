import '../database.dart';

class VGrupoTable extends SupabaseTable<VGrupoRow> {
  @override
  String get tableName => 'v_grupo';

  @override
  VGrupoRow createRow(Map<String, dynamic> data) => VGrupoRow(data);
}

class VGrupoRow extends SupabaseDataRow {
  VGrupoRow(super.data);

  @override
  SupabaseTable get table => VGrupoTable();

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  int? get usuariosId => getField<int>('usuarios_id');
  set usuariosId(int? value) => setField<int>('usuarios_id', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get nomeMinisterio => getField<String>('nomeMinisterio');
  set nomeMinisterio(String? value) =>
      setField<String>('nomeMinisterio', value);

  int? get ministerioId => getField<int>('ministerio_id');
  set ministerioId(int? value) => setField<int>('ministerio_id', value);

  String? get nomeGrupo => getField<String>('nomeGrupo');
  set nomeGrupo(String? value) => setField<String>('nomeGrupo', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);
}
