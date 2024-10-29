import '../database.dart';

class VBloqueiosTable extends SupabaseTable<VBloqueiosRow> {
  @override
  String get tableName => 'v_bloqueios';

  @override
  VBloqueiosRow createRow(Map<String, dynamic> data) => VBloqueiosRow(data);
}

class VBloqueiosRow extends SupabaseDataRow {
  VBloqueiosRow(super.data);

  @override
  SupabaseTable get table => VBloqueiosTable();

  String? get nomeCulto => getField<String>('nomeCulto');
  set nomeCulto(String? value) => setField<String>('nomeCulto', value);

  int? get cultoId => getField<int>('culto_id');
  set cultoId(int? value) => setField<int>('culto_id', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);
}
