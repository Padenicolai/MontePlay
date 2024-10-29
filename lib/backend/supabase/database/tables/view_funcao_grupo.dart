import '../database.dart';

class ViewFuncaoGrupoTable extends SupabaseTable<ViewFuncaoGrupoRow> {
  @override
  String get tableName => 'view_funcao_grupo';

  @override
  ViewFuncaoGrupoRow createRow(Map<String, dynamic> data) =>
      ViewFuncaoGrupoRow(data);
}

class ViewFuncaoGrupoRow extends SupabaseDataRow {
  ViewFuncaoGrupoRow(super.data);

  @override
  SupabaseTable get table => ViewFuncaoGrupoTable();

  String? get nomeMinisterio => getField<String>('nomeMinisterio');
  set nomeMinisterio(String? value) =>
      setField<String>('nomeMinisterio', value);

  int? get ministerioId => getField<int>('ministerio_id');
  set ministerioId(int? value) => setField<int>('ministerio_id', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  int? get idGrupo => getField<int>('idGrupo');
  set idGrupo(int? value) => setField<int>('idGrupo', value);

  String? get nomeGrupo => getField<String>('nomeGrupo');
  set nomeGrupo(String? value) => setField<String>('nomeGrupo', value);
}
