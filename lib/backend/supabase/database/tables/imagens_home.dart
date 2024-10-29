import '../database.dart';

class ImagensHomeTable extends SupabaseTable<ImagensHomeRow> {
  @override
  String get tableName => 'imagensHome';

  @override
  ImagensHomeRow createRow(Map<String, dynamic> data) => ImagensHomeRow(data);
}

class ImagensHomeRow extends SupabaseDataRow {
  ImagensHomeRow(super.data);

  @override
  SupabaseTable get table => ImagensHomeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get campo => getField<String>('campo');
  set campo(String? value) => setField<String>('campo', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);
}
