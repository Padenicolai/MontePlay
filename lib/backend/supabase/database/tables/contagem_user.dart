import '../database.dart';

class ContagemUserTable extends SupabaseTable<ContagemUserRow> {
  @override
  String get tableName => 'contagem_user';

  @override
  ContagemUserRow createRow(Map<String, dynamic> data) => ContagemUserRow(data);
}

class ContagemUserRow extends SupabaseDataRow {
  ContagemUserRow(super.data);

  @override
  SupabaseTable get table => ContagemUserTable();

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
