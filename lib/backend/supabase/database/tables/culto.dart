import '../database.dart';

class CultoTable extends SupabaseTable<CultoRow> {
  @override
  String get tableName => 'culto';

  @override
  CultoRow createRow(Map<String, dynamic> data) => CultoRow(data);
}

class CultoRow extends SupabaseDataRow {
  CultoRow(super.data);

  @override
  SupabaseTable get table => CultoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get nomeCulto => getField<String>('nomeCulto');
  set nomeCulto(String? value) => setField<String>('nomeCulto', value);
}
