import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 500,
        childAspectRatio: 10,
        padding: EdgeInsets.zero,
        children: List.generate(80, (index) {
          return ListTile(
            leading: const Icon(Icons.notifications),
            title: Text('Setting $index'),
            trailing: Switch(value: true, onChanged: (_) {}),
          ); 
        }),
      ),
    );
  }
}
