import '../database.dart';

class ViewSetlistTable extends SupabaseTable<ViewSetlistRow> {
  @override
  String get tableName => 'view_setlist';

  @override
  ViewSetlistRow createRow(Map<String, dynamic> data) => ViewSetlistRow(data);
}

class ViewSetlistRow extends SupabaseDataRow {
  ViewSetlistRow(super.data);

  @override
  SupabaseTable get table => ViewSetlistTable();

  String? get idvideo => getField<String>('idvideo');
  set idvideo(String? value) => setField<String>('idvideo', value);

  int? get musica => getField<int>('musica');
  set musica(int? value) => setField<int>('musica', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get thumb => getField<String>('thumb');
  set thumb(String? value) => setField<String>('thumb', value);

  String? get cantor => getField<String>('cantor');
  set cantor(String? value) => setField<String>('cantor', value);

  int? get cultoId => getField<int>('culto_id');
  set cultoId(int? value) => setField<int>('culto_id', value);
}
