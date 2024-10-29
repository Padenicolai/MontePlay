import '../database.dart';

class FuncoesTable extends SupabaseTable<FuncoesRow> {
  @override
  String get tableName => 'funcoes';

  @override
  FuncoesRow createRow(Map<String, dynamic> data) => FuncoesRow(data);
}

class FuncoesRow extends SupabaseDataRow {
  FuncoesRow(super.data);

  @override
  SupabaseTable get table => FuncoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get ministeriosId => getField<int>('ministerios_id');
  set ministeriosId(int? value) => setField<int>('ministerios_id', value);

  String? get uUser => getField<String>('u_user');
  set uUser(String? value) => setField<String>('u_user', value);
}
