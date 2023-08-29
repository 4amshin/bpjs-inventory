import 'package:bpjs_inventory/presentation/admin/home/view/home_view.dart';
import 'package:bpjs_inventory/presentation/admin/main_navigation/widgets/tab_bar_item.dart';
import 'package:bpjs_inventory/presentation/admin/status/view/status_view.dart';
import 'package:bpjs_inventory/presentation/admin/users/view/users_view.dart';
import 'package:bpjs_inventory/presentation/history/view/history_view.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  int selectedIndex = 0;

  List<Widget> viewOptions = const [
    HomeView(),
    StatusView(),
    HistoryView(),
    UsersView(),
  ];

  List<FlashyTabBarItem> navBarItems() => [
        tabBarItem(
          iconName: 'home.svg',
          title: 'Home',
        ),
        tabBarItem(
          iconName: 'receipt-item.svg',
          title: 'Status',
        ),
        tabBarItem(
          iconName: 'clock.svg',
          title: 'History',
        ),
        tabBarItem(
          iconName: 'people.svg',
          title: 'Users',
        ),
      ];

  onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewOptions.elementAt(selectedIndex),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.white,
        selectedIndex: selectedIndex,
        showElevation: true,
        items: navBarItems(),
        onItemSelected: (index) => onItemSelected(index),
      ),
    );
  }
}
