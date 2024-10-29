import '../database.dart';

class TotalGruposTable extends SupabaseTable<TotalGruposRow> {
  @override
  String get tableName => 'total_grupos';

  @override
  TotalGruposRow createRow(Map<String, dynamic> data) => TotalGruposRow(data);
}

class TotalGruposRow extends SupabaseDataRow {
  TotalGruposRow(super.data);

  @override
  SupabaseTable get table => TotalGruposTable();

  int? get idGrupo => getField<int>('id_grupo');
  set idGrupo(int? value) => setField<int>('id_grupo', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
