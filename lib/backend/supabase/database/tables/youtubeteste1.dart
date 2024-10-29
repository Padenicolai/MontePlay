import '../database.dart';

class Youtubeteste1Table extends SupabaseTable<Youtubeteste1Row> {
  @override
  String get tableName => 'youtubeteste1';

  @override
  Youtubeteste1Row createRow(Map<String, dynamic> data) =>
      Youtubeteste1Row(data);
}

class Youtubeteste1Row extends SupabaseDataRow {
  Youtubeteste1Row(super.data);

  @override
  SupabaseTable get table => Youtubeteste1Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idvideo => getField<String>('idvideo');
  set idvideo(String? value) => setField<String>('idvideo', value);

  String? get urlthumb => getField<String>('urlthumb');
  set urlthumb(String? value) => setField<String>('urlthumb', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get cantor => getField<String>('cantor');
  set cantor(String? value) => setField<String>('cantor', value);
}
