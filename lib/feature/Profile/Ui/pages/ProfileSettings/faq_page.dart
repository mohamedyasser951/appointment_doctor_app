import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<Map<String, String>> faqs = [
    {
      "question": "What should I expect during a doctor's appointment?",
      "answer":
          "During a doctor's appointment, you can expect to discuss your medical history, current symptoms or concerns, and any medications or treatments you are taking. The doctor will likely perform a physical exam and may order additional tests or procedures if necessary."
    },
    {
      "question": "What should I bring to my doctor's appointment?",
      "answer": "Bring your ID, insurance card, and a list of medications."
    },
    {
      "question": "What if I need to cancel or reschedule my appointment?",
      "answer": "Contact the doctor's office as soon as possible to reschedule."
    },
    {
      "question": "How do I make an appointment with a doctor?",
      "answer":
          "You can call the doctor's office or use their online booking system."
    },
    {
      "question": "How early should I arrive for my doctor's appointment?",
      "answer":
          "It's best to arrive 10-15 minutes early to complete any paperwork."
    },
    {
      "question": "How long will my doctor's appointment take?",
      "answer": "Appointments typically last between 15 and 30 minutes."
    },
    {
      "question": "How much will my doctor's appointment cost?",
      "answer": "Costs vary based on your insurance and the type of visit."
    },
    {
      "question": "What should I look for in a good doctor?",
      "answer":
          "Look for a doctor with good reviews, experience, and a style of care that fits your needs."
    },
  ];

  FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button
          },
        ),
        title: const Text(
          "FAQ",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(
              faqs[index]["question"]!,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(faqs[index]["answer"]!),
              ),
            ],
          );
        },
      ),
    );
  }
}
