import '../database.dart';

class ViewUsuarioCultoUnicosTable
    extends SupabaseTable<ViewUsuarioCultoUnicosRow> {
  @override
  String get tableName => 'view_usuario_culto_unicos';

  @override
  ViewUsuarioCultoUnicosRow createRow(Map<String, dynamic> data) =>
      ViewUsuarioCultoUnicosRow(data);
}

class ViewUsuarioCultoUnicosRow extends SupabaseDataRow {
  ViewUsuarioCultoUnicosRow(super.data);

  @override
  SupabaseTable get table => ViewUsuarioCultoUnicosTable();

  String? get nomeCulto => getField<String>('nomeCulto');
  set nomeCulto(String? value) => setField<String>('nomeCulto', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  int? get usuariosId => getField<int>('usuarios_id');
  set usuariosId(int? value) => setField<int>('usuarios_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get usuariosUnicos => getField<int>('usuarios_unicos');
  set usuariosUnicos(int? value) => setField<int>('usuarios_unicos', value);
}
