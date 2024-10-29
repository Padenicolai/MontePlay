import '../database.dart';

class UsuarioFuncaoTable extends SupabaseTable<UsuarioFuncaoRow> {
  @override
  String get tableName => 'usuario_funcao';

  @override
  UsuarioFuncaoRow createRow(Map<String, dynamic> data) =>
      UsuarioFuncaoRow(data);
}

class UsuarioFuncaoRow extends SupabaseDataRow {
  UsuarioFuncaoRow(super.data);

  @override
  SupabaseTable get table => UsuarioFuncaoTable();

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get ministerio => getField<String>('ministerio');
  set ministerio(String? value) => setField<String>('ministerio', value);

  String? get icone => getField<String>('icone');
  set icone(String? value) => setField<String>('icone', value);

  int? get idministerio => getField<int>('idministerio');
  set idministerio(int? value) => setField<int>('idministerio', value);
}
