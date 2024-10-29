import '../database.dart';

class ChatsTable extends SupabaseTable<ChatsRow> {
  @override
  String get tableName => 'chats';

  @override
  ChatsRow createRow(Map<String, dynamic> data) => ChatsRow(data);
}

class ChatsRow extends SupabaseDataRow {
  ChatsRow(super.data);

  @override
  SupabaseTable get table => ChatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get chatName => getField<String>('chat_name');
  set chatName(String? value) => setField<String>('chat_name', value);

  String? get chatDescription => getField<String>('chat_description');
  set chatDescription(String? value) =>
      setField<String>('chat_description', value);

  String? get chatImg => getField<String>('chat_img');
  set chatImg(String? value) => setField<String>('chat_img', value);

  List<String> get chatMembers => getListField<String>('chat_members');
  set chatMembers(List<String>? value) =>
      setListField<String>('chat_members', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);

  DateTime? get lastMessageTime => getField<DateTime>('last_message_time');
  set lastMessageTime(DateTime? value) =>
      setField<DateTime>('last_message_time', value);

  bool? get isChatGroup => getField<bool>('is_chat_group');
  set isChatGroup(bool? value) => setField<bool>('is_chat_group', value);

  List<String> get chatfcmtoken => getListField<String>('chatfcmtoken');
  set chatfcmtoken(List<String>? value) =>
      setListField<String>('chatfcmtoken', value);
}
