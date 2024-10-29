import '../database.dart';

class RepertorioTable extends SupabaseTable<RepertorioRow> {
  @override
  String get tableName => 'repertorio';

  @override
  RepertorioRow createRow(Map<String, dynamic> data) => RepertorioRow(data);
}

class RepertorioRow extends SupabaseDataRow {
  RepertorioRow(super.data);

  @override
  SupabaseTable get table => RepertorioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get videoid => getField<String>('videoid')!;
  set videoid(String value) => setField<String>('videoid', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get cantor => getField<String>('cantor');
  set cantor(String? value) => setField<String>('cantor', value);

  String? get thumbnails => getField<String>('thumbnails');
  set thumbnails(String? value) => setField<String>('thumbnails', value);
}
