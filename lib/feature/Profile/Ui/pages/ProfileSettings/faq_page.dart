import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<Map<String, String>> faqs = [
    {
      "question": "Can I bring someone with me to my appointment?",
      "answer": "Yes, you can bring a family member or friend for support."
    },
    {
      "question": "What should I wear to my doctor's appointment?",
      "answer":
          "Wear comfortable clothing that allows easy access for examination."
    },
    {
      "question": "Will the doctor share my medical information with others?",
      "answer":
          "Your medical information is confidential and will only be shared with your consent, except in cases required by law."
    },
    {
      "question": "What should I do if I feel nervous about my appointment?",
      "answer":
          "Write down your concerns beforehand and share them with the doctor to help ease your nerves."
    },
    {
      "question": "Can I ask for a second opinion?",
      "answer": "Yes, it’s your right to seek a second opinion if you wish."
    },
    {
      "question": "How do I prepare for a specialist appointment?",
      "answer":
          "Bring any relevant medical records, referral letters, and a list of symptoms or questions."
    },
    {
      "question": "What happens if I’m running late to my appointment?",
      "answer":
          "Call the doctor's office to inform them and check if they can still see you."
    },
    {
      "question": "Will I get test results during the appointment?",
      "answer":
          "Some results may be available immediately, but others might take a few days to process."
    },
    {
      "question": "What if I don’t understand the doctor’s explanations?",
      "answer":
          "Ask the doctor to explain further or provide written instructions for clarity."
    },
    {
      "question": "How can I follow up after my appointment?",
      "answer":
          "Contact the office or use the patient portal to ask questions or schedule follow-ups."
    },
    {
      "question": "What if I need assistance with transportation?",
      "answer":
          "Many clinics can provide information about local transportation services or options for patients."
    },
    {
      "question": "Can I request a specific gender for my doctor?",
      "answer":
          "Yes, most offices will try to accommodate your preference if possible."
    },
    {
      "question":
          "What should I do if I have an emergency before my appointment?",
      "answer":
          "Call emergency services or visit the nearest emergency room immediately."
    },
    {
      "question": "Will I need to fast before my appointment?",
      "answer":
          "Check with the doctor's office ahead of time, as some tests require fasting."
    },
    {
      "question": "Can I bring my child to my appointment?",
      "answer":
          "It's best to check with the office beforehand, but many facilities are child-friendly."
    },
    {
      "question":
          "What should I do if I experience new symptoms after scheduling my appointment?",
      "answer":
          "Contact the doctor's office to inform them of any changes or new symptoms."
    },
    {
      "question": "What payment methods are accepted for appointments?",
      "answer":
          "Most offices accept cash, credit cards, and insurance. Confirm with the office if you have questions."
    }
  ];

  FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "FAQ",
          style: Theme.of(context).textTheme.headlineSmall,
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
            shape: Border.all(width: 0.0),
            title: Text(
              faqs[index]["question"]!,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  faqs[index]["answer"]!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
