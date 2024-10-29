import '../database.dart';

class ViewCultoUsuarioTable extends SupabaseTable<ViewCultoUsuarioRow> {
  @override
  String get tableName => 'view_culto_usuario';

  @override
  ViewCultoUsuarioRow createRow(Map<String, dynamic> data) =>
      ViewCultoUsuarioRow(data);
}

class ViewCultoUsuarioRow extends SupabaseDataRow {
  ViewCultoUsuarioRow(super.data);

  @override
  SupabaseTable get table => ViewCultoUsuarioTable();

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
}
