import '../database.dart';

class ViewMusicasCultoTable extends SupabaseTable<ViewMusicasCultoRow> {
  @override
  String get tableName => 'view_musicas_culto';

  @override
  ViewMusicasCultoRow createRow(Map<String, dynamic> data) =>
      ViewMusicasCultoRow(data);
}

class ViewMusicasCultoRow extends SupabaseDataRow {
  ViewMusicasCultoRow(super.data);

  @override
  SupabaseTable get table => ViewMusicasCultoTable();

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);

  int? get musica => getField<int>('musica');
  set musica(int? value) => setField<int>('musica', value);

  int? get culto => getField<int>('culto');
  set culto(int? value) => setField<int>('culto', value);
}
