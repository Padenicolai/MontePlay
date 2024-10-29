import '../database.dart';

class BloqueiosTable extends SupabaseTable<BloqueiosRow> {
  @override
  String get tableName => 'bloqueios';

  @override
  BloqueiosRow createRow(Map<String, dynamic> data) => BloqueiosRow(data);
}

class BloqueiosRow extends SupabaseDataRow {
  BloqueiosRow(super.data);

  @override
  SupabaseTable get table => BloqueiosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  int? get usuario => getField<int>('usuario');
  set usuario(int? value) => setField<int>('usuario', value);

  int? get idCulto => getField<int>('idCulto');
  set idCulto(int? value) => setField<int>('idCulto', value);
}
