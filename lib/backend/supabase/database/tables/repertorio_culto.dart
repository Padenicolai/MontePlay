import '../database.dart';

class RepertorioCultoTable extends SupabaseTable<RepertorioCultoRow> {
  @override
  String get tableName => 'repertorio_culto';

  @override
  RepertorioCultoRow createRow(Map<String, dynamic> data) =>
      RepertorioCultoRow(data);
}

class RepertorioCultoRow extends SupabaseDataRow {
  RepertorioCultoRow(super.data);

  @override
  SupabaseTable get table => RepertorioCultoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idculto => getField<int>('idculto');
  set idculto(int? value) => setField<int>('idculto', value);

  int? get idmusica => getField<int>('idmusica');
  set idmusica(int? value) => setField<int>('idmusica', value);
}
