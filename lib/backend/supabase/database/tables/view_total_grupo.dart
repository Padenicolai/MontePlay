import '../database.dart';

class ViewTotalGrupoTable extends SupabaseTable<ViewTotalGrupoRow> {
  @override
  String get tableName => 'view_total_grupo';

  @override
  ViewTotalGrupoRow createRow(Map<String, dynamic> data) =>
      ViewTotalGrupoRow(data);
}

class ViewTotalGrupoRow extends SupabaseDataRow {
  ViewTotalGrupoRow(super.data);

  @override
  SupabaseTable get table => ViewTotalGrupoTable();

  int? get idGrupo => getField<int>('id_grupo');
  set idGrupo(int? value) => setField<int>('id_grupo', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);

  String? get nomeGrupo => getField<String>('nomeGrupo');
  set nomeGrupo(String? value) => setField<String>('nomeGrupo', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);

  int? get ordem => getField<int>('ORDEM');
  set ordem(int? value) => setField<int>('ORDEM', value);
}
