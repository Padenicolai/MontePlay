import '../database.dart';

class TemaTable extends SupabaseTable<TemaRow> {
  @override
  String get tableName => 'tema';

  @override
  TemaRow createRow(Map<String, dynamic> data) => TemaRow(data);
}

class TemaRow extends SupabaseDataRow {
  TemaRow(super.data);

  @override
  SupabaseTable get table => TemaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get top => getField<String>('top');
  set top(String? value) => setField<String>('top', value);

  String? get youtube => getField<String>('youtube');
  set youtube(String? value) => setField<String>('youtube', value);
}
