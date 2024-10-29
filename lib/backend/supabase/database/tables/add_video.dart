import '../database.dart';

class AddVideoTable extends SupabaseTable<AddVideoRow> {
  @override
  String get tableName => 'addVideo';

  @override
  AddVideoRow createRow(Map<String, dynamic> data) => AddVideoRow(data);
}

class AddVideoRow extends SupabaseDataRow {
  AddVideoRow(super.data);

  @override
  SupabaseTable get table => AddVideoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get linkVideo => getField<String>('linkVideo');
  set linkVideo(String? value) => setField<String>('linkVideo', value);
}
