import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:m_pharma/Pages/categories.dart';
import 'package:m_pharma/Pages/home.dart';
import 'package:m_pharma/Pages/order_medicine.dart';

import 'navbar/navigationdrawer.dart';

const _tab_list = {
  'Home': Icons.home,
  'Order': Icons.medication_rounded,
  'Categories': Icons.category_rounded
};

const _pages = [Homepage(), OrderMedicine(), Categories()];

class MainTabActivity extends StatefulWidget {
  const MainTabActivity({Key? key}) : super(key: key);

  @override
  _MainTabActivityState createState() => _MainTabActivityState();
}

class _MainTabActivityState extends State<MainTabActivity>
    with SingleTickerProviderStateMixin {
  final TabStyle _tabStyle = TabStyle.reactCircle;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("M Pharma"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_rounded,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            },
          ),
          const Padding(padding: EdgeInsets.only(right: 10.0)),
          IconButton(
            icon: const Icon(
              Icons.person_outline_rounded,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        style: _tabStyle,
        items: <TabItem>[
          for (final entry in _tab_list.entries)
            TabItem(icon: entry.value, title: entry.key),
        ],
        initialActiveIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
      drawer: const NavDrawer(),
      body: _pages[index],
    );
  }
}
