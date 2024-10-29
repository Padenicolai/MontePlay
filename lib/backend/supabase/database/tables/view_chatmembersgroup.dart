import '../database.dart';

class ViewChatmembersgroupTable extends SupabaseTable<ViewChatmembersgroupRow> {
  @override
  String get tableName => 'view_chatmembersgroup';

  @override
  ViewChatmembersgroupRow createRow(Map<String, dynamic> data) =>
      ViewChatmembersgroupRow(data);
}

class ViewChatmembersgroupRow extends SupabaseDataRow {
  ViewChatmembersgroupRow(super.data);

  @override
  SupabaseTable get table => ViewChatmembersgroupTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  List<String> get chatMembers => getListField<String>('chat_members');
  set chatMembers(List<String>? value) =>
      setListField<String>('chat_members', value);
}
