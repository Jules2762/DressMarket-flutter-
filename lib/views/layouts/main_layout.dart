import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:dress_market/views/screens/cart/cart_page.dart';
import 'package:dress_market/views/screens/home/home_page.dart';
import 'package:dress_market/views/screens/order/order_page.dart';
import 'package:dress_market/views/screens/shop/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});
  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        title: Text(
          'DressMarket',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        backgroundColor: ThemeColor.primarySurface,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              label: Text("3"),

              backgroundColor: ThemeColor.primary,
              child: const Icon(Icons.notifications, color: Colors.white),
            ),
          ),
        ],
      ),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ThemeColor.primarySurface,
        // enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        unselectedItemColor: ThemeColor.secondaryWhite,

        selectedItemColor: ThemeColor.primary,
        selectedLabelStyle: GoogleFonts.playfairDisplay(),
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
