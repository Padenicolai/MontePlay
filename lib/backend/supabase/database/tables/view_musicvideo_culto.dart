import '../database.dart';

class ViewMusicvideoCultoTable extends SupabaseTable<ViewMusicvideoCultoRow> {
  @override
  String get tableName => 'view_musicvideo_culto';

  @override
  ViewMusicvideoCultoRow createRow(Map<String, dynamic> data) =>
      ViewMusicvideoCultoRow(data);
}

class ViewMusicvideoCultoRow extends SupabaseDataRow {
  ViewMusicvideoCultoRow(super.data);

  @override
  SupabaseTable get table => ViewMusicvideoCultoTable();

  String? get idvideo => getField<String>('idvideo');
  set idvideo(String? value) => setField<String>('idvideo', value);

  int? get musica => getField<int>('musica');
  set musica(int? value) => setField<int>('musica', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  int? get culto => getField<int>('culto');
  set culto(int? value) => setField<int>('culto', value);
}
