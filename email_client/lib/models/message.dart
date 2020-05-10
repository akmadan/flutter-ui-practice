import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Message {
  const Message({
    @required this.userName,
    @required this.userPhoto,
    @required this.subject,
    @required this.message,
    @required this.timestamp,
    this.attachments = const [],
    this.color,
  });

  final String userName;
  final String userPhoto;
  final String subject;
  final String message;
  final String timestamp;
  final Color color;
  final List<String> attachments;

  @override
  String toString() {
    return '{userName: $userName, subject: $subject}';
  }
}
