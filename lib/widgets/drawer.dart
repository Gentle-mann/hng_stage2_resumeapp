import 'package:flutter/material.dart';

import '../constants/drawer_items.dart';
import '../models/my_info.dart';
import '../pages/settings.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = drawerTiles(context);
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: [
            ...items.map(
              (tile) => _buildDrawerTile(context, tile),
            ),
            const Divider(color: Colors.grey, height: 20.0),
            _buildSettingsTile(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerTile(BuildContext context, DrawerTiles drawerTile) {
    return ListTile(
      title: Text(drawerTile.title),
      trailing: Icon(drawerTile.icon),
      onTap: drawerTile.onClicked,
    );
  }

  Widget _buildSettingsTile(context) {
    return ListTile(
      title: const Text('Settings'),
      trailing: const Icon(Icons.settings),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const SettingsPage();
            },
          ),
        );
      },
    );
  }
}
