import '../database.dart';

class VersiculosBibliaTable extends SupabaseTable<VersiculosBibliaRow> {
  @override
  String get tableName => 'versiculosBiblia';

  @override
  VersiculosBibliaRow createRow(Map<String, dynamic> data) =>
      VersiculosBibliaRow(data);
}

class VersiculosBibliaRow extends SupabaseDataRow {
  VersiculosBibliaRow(super.data);

  @override
  SupabaseTable get table => VersiculosBibliaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idLivro => getField<int>('id_livro');
  set idLivro(int? value) => setField<int>('id_livro', value);

  int? get capitulo => getField<int>('capitulo');
  set capitulo(int? value) => setField<int>('capitulo', value);

  int? get versiculo => getField<int>('versiculo');
  set versiculo(int? value) => setField<int>('versiculo', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);
}
