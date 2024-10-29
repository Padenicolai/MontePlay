import '../database.dart';

class CadastroGrupoTable extends SupabaseTable<CadastroGrupoRow> {
  @override
  String get tableName => 'cadastroGrupo';

  @override
  CadastroGrupoRow createRow(Map<String, dynamic> data) =>
      CadastroGrupoRow(data);
}

class CadastroGrupoRow extends SupabaseDataRow {
  CadastroGrupoRow(super.data);

  @override
  SupabaseTable get table => CadastroGrupoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  int? get idGrupo => getField<int>('id_grupo');
  set idGrupo(int? value) => setField<int>('id_grupo', value);
}
