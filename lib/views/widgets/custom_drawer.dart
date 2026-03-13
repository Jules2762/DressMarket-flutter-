import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: ThemeColor.primarySurface,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: ThemeColor.secondarySurface),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Text(
                    "DressMarket",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            // iconColor: Theme.of(context),
            title: Text("Home", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.checkroom),
            title: Text(
              "Shop by Category",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            textColor: ThemeColor.secondaryWhite,
            iconColor: ThemeColor.secondaryWhite,
            childrenPadding: EdgeInsets.only(left: 20),
            children: [
              ListTile(
                title: Text(
                  "Men",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListTile(
                title: Text(
                  "Women",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListTile(
                title: Text(
                  "Kid",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.settings),
            // iconColor: Theme.of(context),
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
        ],
      ),
    );
  }
}

class CustomDrawerItem {
  final String title;
  final IconData icon;
  final String? page;

  const CustomDrawerItem({required this.title, required this.icon, this.page});
}
