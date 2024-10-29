import '../database.dart';

class NotEscalaTable extends SupabaseTable<NotEscalaRow> {
  @override
  String get tableName => 'not_escala';

  @override
  NotEscalaRow createRow(Map<String, dynamic> data) => NotEscalaRow(data);
}

class NotEscalaRow extends SupabaseDataRow {
  NotEscalaRow(super.data);

  @override
  SupabaseTable get table => NotEscalaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get corpo => getField<String>('corpo');
  set corpo(String? value) => setField<String>('corpo', value);

  List<String> get fcmtoken => getListField<String>('fcmtoken');
  set fcmtoken(List<String>? value) => setListField<String>('fcmtoken', value);
}
