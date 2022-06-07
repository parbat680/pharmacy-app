import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue[300],
            ),
            child: ListTile(
              title: Column(children: const [
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 40,
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/xWwbOdd.png"),
                ),
                Text(
                  "Hello UserName",
                )
              ]),
            ),
          ),
          ListTile(
            title: const Text("Offers"),
            leading: const Icon(
              Icons.card_travel_rounded,
              color: Colors.red,
            ),
            onTap: () {},
          ),
          const Divider(
            height: 1.0,
          ),
          ListTile(
            title: const Text("Contact"),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            onTap: () {/*react on tap*/},
          ),
          const Divider(
            height: 1.0,
          ),
          ListTile(
            title: const Text("Settings"),
            leading: const Icon(Icons.settings),
            onTap: () {/*react on tap*/},
          ),
        ],
      ),
    );
  }
}
