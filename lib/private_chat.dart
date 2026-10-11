import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/chat.dart';
import 'package:ui_whatsapp/theme.dart';

class PrivateChat extends StatelessWidget {
  final Chat chat;
  const PrivateChat({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(chat.image),
            ),
            const SizedBox(width: 10),
            Text(
              chat.name,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        backgroundColor: whatsAppGreen,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Icon(Icons.videocam),
          SizedBox(width: 20),
          Icon(Icons.call),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Contoh bubble chat
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Container(
            //     margin: const EdgeInsets.only(bottom: 10),
            //     padding: const EdgeInsets.all(12),
            //     decoration: BoxDecoration(
            //       color: whatsAppLightGreen, // Warna hijau muda untuk chat kita
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     child: const Text(
            //       '',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Warna abu-abu untuk chat mereka
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  chat.mostRecentMessage,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      // Bottom bar untuk input pesan
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        color: Colors.grey[100],
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.emoji_emotions),
              onPressed: () {},
              color: whatsAppGreen,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.attach_file),
              onPressed: () {},
              color: whatsAppGreen,
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
              color: whatsAppGreen,
            ),
          ],
        ),
      ),
    );
  }
}