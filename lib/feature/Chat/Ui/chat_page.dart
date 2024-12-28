import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Message", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search Message",
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                MessageListItem(
                  imageUrl:
                      "https://via.placeholder.com/48", // Replace with actual image
                  name: "Dr. Randy Wigham",
                  subtitle: "General Doctor | RSUD Gatot Subroto",
                  message:
                      "Fine, I’ll do a check. Does the patient have a history of certain diseases?",
                  time: "7:11 PM",
                  unreadCount: 2,
                ),
                MessageListItem(
                  imageUrl:
                      "https://via.placeholder.com/48", // Replace with actual image
                  name: "Dr. Jack Sullivan",
                  subtitle: "General Doctor | RSUD Gatot Subroto",
                  message:
                      "Fine, I’ll do a check. Does the patient have a history of certain diseases?",
                  time: "7:11 PM",
                  unreadCount: 0,
                ),
                MessageListItem(
                  imageUrl:
                      "https://via.placeholder.com/48", // Replace with actual image
                  name: "Drg. Hanna Stanton",
                  subtitle: "General Doctor | RSUD Gatot Subroto",
                  message:
                      "Fine, I’ll do a check. Does the patient have a history of certain diseases?",
                  time: "7:11 PM",
                  unreadCount: 1,
                ),
                MessageListItem(
                  imageUrl:
                      "https://via.placeholder.com/48", // Replace with actual image
                  name: "Dr. Emery Lubin",
                  subtitle: "General Doctor | RSUD Gatot Subroto",
                  message:
                      "Fine, I’ll do a check. Does the patient have a history of certain diseases?",
                  time: "7:11 PM",
                  unreadCount: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  final String message;
  final String time;
  final int unreadCount;

  const MessageListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    required this.message,
    required this.time,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              if (unreadCount > 0)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    unreadCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
