import '../database.dart';

class LivrosBibliaTable extends SupabaseTable<LivrosBibliaRow> {
  @override
  String get tableName => 'livrosBiblia';

  @override
  LivrosBibliaRow createRow(Map<String, dynamic> data) => LivrosBibliaRow(data);
}

class LivrosBibliaRow extends SupabaseDataRow {
  LivrosBibliaRow(super.data);

  @override
  SupabaseTable get table => LivrosBibliaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get abbrev => getField<String>('abbrev');
  set abbrev(String? value) => setField<String>('abbrev', value);

  String? get testamento => getField<String>('testamento');
  set testamento(String? value) => setField<String>('testamento', value);

  String? get autor => getField<String>('autor');
  set autor(String? value) => setField<String>('autor', value);

  int? get capitulos => getField<int>('capitulos');
  set capitulos(int? value) => setField<int>('capitulos', value);

  String? get grupo => getField<String>('grupo');
  set grupo(String? value) => setField<String>('grupo', value);

  int? get idLivro => getField<int>('id_livro');
  set idLivro(int? value) => setField<int>('id_livro', value);
}
