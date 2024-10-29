import '../database.dart';

class ViewChatmembersTable extends SupabaseTable<ViewChatmembersRow> {
  @override
  String get tableName => 'view_chatmembers';

  @override
  ViewChatmembersRow createRow(Map<String, dynamic> data) =>
      ViewChatmembersRow(data);
}

class ViewChatmembersRow extends SupabaseDataRow {
  ViewChatmembersRow(super.data);

  @override
  SupabaseTable get table => ViewChatmembersTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  List<String> get chatMembers => getListField<String>('chat_members');
  set chatMembers(List<String>? value) =>
      setListField<String>('chat_members', value);
}
