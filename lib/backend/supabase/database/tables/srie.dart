import '../database.dart';

class SrieTable extends SupabaseTable<SrieRow> {
  @override
  String get tableName => 'série';

  @override
  SrieRow createRow(Map<String, dynamic> data) => SrieRow(data);
}

class SrieRow extends SupabaseDataRow {
  SrieRow(super.data);

  @override
  SupabaseTable get table => SrieTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get youtube => getField<String>('youtube');
  set youtube(String? value) => setField<String>('youtube', value);
}
