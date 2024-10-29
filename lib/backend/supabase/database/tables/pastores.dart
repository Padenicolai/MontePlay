import '../database.dart';

class PastoresTable extends SupabaseTable<PastoresRow> {
  @override
  String get tableName => 'pastores';

  @override
  PastoresRow createRow(Map<String, dynamic> data) => PastoresRow(data);
}

class PastoresRow extends SupabaseDataRow {
  PastoresRow(super.data);

  @override
  SupabaseTable get table => PastoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get youtube => getField<String>('youtube');
  set youtube(String? value) => setField<String>('youtube', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get minifoto => getField<String>('minifoto');
  set minifoto(String? value) => setField<String>('minifoto', value);
}
