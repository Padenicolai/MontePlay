import '../database.dart';

class ViewEscalaTable extends SupabaseTable<ViewEscalaRow> {
  @override
  String get tableName => 'view_escala';

  @override
  ViewEscalaRow createRow(Map<String, dynamic> data) => ViewEscalaRow(data);
}

class ViewEscalaRow extends SupabaseDataRow {
  ViewEscalaRow(super.data);

  @override
  SupabaseTable get table => ViewEscalaTable();

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

  int? get grupoid => getField<int>('grupoid');
  set grupoid(int? value) => setField<int>('grupoid', value);

  String? get culto => getField<String>('culto');
  set culto(String? value) => setField<String>('culto', value);

  int? get cultoId => getField<int>('culto_id');
  set cultoId(int? value) => setField<int>('culto_id', value);

  int? get grupoId => getField<int>('grupo_id');
  set grupoId(int? value) => setField<int>('grupo_id', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
