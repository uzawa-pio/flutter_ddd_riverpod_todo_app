import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              dense: true,
              title: const Text('権利表記'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                showLicensePage(
                  context: context,
                  applicationName: 'Riverpod + DDDサンプル',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
