import '../database.dart';

class MinisteriosTable extends SupabaseTable<MinisteriosRow> {
  @override
  String get tableName => 'ministerios';

  @override
  MinisteriosRow createRow(Map<String, dynamic> data) => MinisteriosRow(data);
}

class MinisteriosRow extends SupabaseDataRow {
  MinisteriosRow(super.data);

  @override
  SupabaseTable get table => MinisteriosTable();

  int get ministerioId => getField<int>('ministerio_id')!;
  set ministerioId(int value) => setField<int>('ministerio_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeMinisterio => getField<String>('nomeMinisterio');
  set nomeMinisterio(String? value) =>
      setField<String>('nomeMinisterio', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  int? get idGrupo => getField<int>('idGrupo');
  set idGrupo(int? value) => setField<int>('idGrupo', value);
}
