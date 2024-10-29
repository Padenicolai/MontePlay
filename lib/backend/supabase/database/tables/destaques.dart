import '../database.dart';

class DestaquesTable extends SupabaseTable<DestaquesRow> {
  @override
  String get tableName => 'destaques';

  @override
  DestaquesRow createRow(Map<String, dynamic> data) => DestaquesRow(data);
}

class DestaquesRow extends SupabaseDataRow {
  DestaquesRow(super.data);

  @override
  SupabaseTable get table => DestaquesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);
}
