import 'package:chat_supabase/model/message_model.dart';
import 'package:chat_supabase/model/profile_model.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  late final Stream<List<MessageModel>> _messagesStream;
  final Map<String, ProfileModel> _profileCache = {};

   

}