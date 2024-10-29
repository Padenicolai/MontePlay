import '../database.dart';

class ViewUsertokenTable extends SupabaseTable<ViewUsertokenRow> {
  @override
  String get tableName => 'view_usertoken';

  @override
  ViewUsertokenRow createRow(Map<String, dynamic> data) =>
      ViewUsertokenRow(data);
}

class ViewUsertokenRow extends SupabaseDataRow {
  ViewUsertokenRow(super.data);

  @override
  SupabaseTable get table => ViewUsertokenTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
