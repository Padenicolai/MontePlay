import '../database.dart';

class ContagemLikesTable extends SupabaseTable<ContagemLikesRow> {
  @override
  String get tableName => 'contagem_likes';

  @override
  ContagemLikesRow createRow(Map<String, dynamic> data) =>
      ContagemLikesRow(data);
}

class ContagemLikesRow extends SupabaseDataRow {
  ContagemLikesRow(super.data);

  @override
  SupabaseTable get table => ContagemLikesTable();

  String? get videoId => getField<String>('videoId');
  set videoId(String? value) => setField<String>('videoId', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
