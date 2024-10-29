import '../database.dart';

class EstudosTable extends SupabaseTable<EstudosRow> {
  @override
  String get tableName => 'estudos';

  @override
  EstudosRow createRow(Map<String, dynamic> data) => EstudosRow(data);
}

class EstudosRow extends SupabaseDataRow {
  EstudosRow(super.data);

  @override
  SupabaseTable get table => EstudosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get youTube => getField<String>('YouTube');
  set youTube(String? value) => setField<String>('YouTube', value);

  String? get imgcapa => getField<String>('imgcapa');
  set imgcapa(String? value) => setField<String>('imgcapa', value);
}
