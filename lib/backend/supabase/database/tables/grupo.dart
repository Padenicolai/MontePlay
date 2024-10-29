import '../database.dart';

class GrupoTable extends SupabaseTable<GrupoRow> {
  @override
  String get tableName => 'grupo';

  @override
  GrupoRow createRow(Map<String, dynamic> data) => GrupoRow(data);
}

class GrupoRow extends SupabaseDataRow {
  GrupoRow(super.data);

  @override
  SupabaseTable get table => GrupoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeGrupo => getField<String>('nomeGrupo');
  set nomeGrupo(String? value) => setField<String>('nomeGrupo', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);
}
