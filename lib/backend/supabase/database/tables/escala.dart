import '../database.dart';

class EscalaTable extends SupabaseTable<EscalaRow> {
  @override
  String get tableName => 'escala';

  @override
  EscalaRow createRow(Map<String, dynamic> data) => EscalaRow(data);
}

class EscalaRow extends SupabaseDataRow {
  EscalaRow(super.data);

  @override
  SupabaseTable get table => EscalaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idCulto => getField<int>('idCulto');
  set idCulto(int? value) => setField<int>('idCulto', value);

  int? get usuariosId => getField<int>('usuarios_id');
  set usuariosId(int? value) => setField<int>('usuarios_id', value);

  int? get ministerioId => getField<int>('ministerio_id');
  set ministerioId(int? value) => setField<int>('ministerio_id', value);

  int? get grupoId => getField<int>('grupo_id');
  set grupoId(int? value) => setField<int>('grupo_id', value);
}
