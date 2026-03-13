import 'package:dress_market/views/screens/client/cart/cart_page.dart';
import 'package:dress_market/views/screens/client/home/home_page.dart';
import 'package:dress_market/views/screens/client/order/order_page.dart';
import 'package:dress_market/views/screens/client/shop/shop_page.dart';
import 'package:dress_market/views/widgets/admin/admin_custom_drawer.dart';

import 'package:flutter/material.dart';


class AdminMainLayout extends StatefulWidget {
  const AdminMainLayout({super.key});
  @override
  State<AdminMainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<AdminMainLayout> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  final List<Widget> _pages = [
    HomePage(),
    ShopPage(),
    CartPage(),
    OrderPage(),
    // HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        animateColor: true,
        leading: IconButton(
          onPressed: () {
            // if(Scaffold.hasDrawer(context)){
            _scaffoldkey.currentState?.openDrawer();
            // }
          },
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'DressMarket',
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              label: Text("3"),
              backgroundColor: Theme.of(context).primaryColor,

              // backgroundColor: ThemeColor.primary,
              child: const Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      drawer: AdminCustomDrawer(),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            if (index == 4) {
              Navigator.pushNamed(context, "/profile");
            } else {
              _currentIndex = index;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            activeIcon: Icon(Icons.store),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            activeIcon: Icon(Icons.receipt_long),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
