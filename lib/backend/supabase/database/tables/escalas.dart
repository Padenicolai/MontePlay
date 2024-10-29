import '../database.dart';

class EscalasTable extends SupabaseTable<EscalasRow> {
  @override
  String get tableName => 'escalas';

  @override
  EscalasRow createRow(Map<String, dynamic> data) => EscalasRow(data);
}

class EscalasRow extends SupabaseDataRow {
  EscalasRow(super.data);

  @override
  SupabaseTable get table => EscalasTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get nomeMinisterio => getField<String>('nomeMinisterio');
  set nomeMinisterio(String? value) =>
      setField<String>('nomeMinisterio', value);

  int? get ministerioId => getField<int>('ministerio_id');
  set ministerioId(int? value) => setField<int>('ministerio_id', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get culto => getField<String>('culto');
  set culto(String? value) => setField<String>('culto', value);

  int? get cultoId => getField<int>('culto_id');
  set cultoId(int? value) => setField<int>('culto_id', value);
}
