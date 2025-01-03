import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  NotificationSettingsPageState createState() =>
      NotificationSettingsPageState();
}

class NotificationSettingsPageState extends State<NotificationSettingsPage> {
  // Define state variables for switches
  bool notificationsEnabled = true;
  bool soundEnabled = true;
  bool vibrateEnabled = true;
  bool appUpdatesEnabled = false;
  bool specialOffersEnabled = true;

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
          "Notification",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text("Notification from DocNow"),
            value: notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Sound"),
            value: soundEnabled,
            onChanged: (bool value) {
              setState(() {
                soundEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Vibrate"),
            value: vibrateEnabled,
            onChanged: (bool value) {
              setState(() {
                vibrateEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("App Updates"),
            value: appUpdatesEnabled,
            onChanged: (bool value) {
              setState(() {
                appUpdatesEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Special Offers"),
            value: specialOffersEnabled,
            onChanged: (bool value) {
              setState(() {
                specialOffersEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
