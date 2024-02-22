import 'package:flutter/material.dart';
import 'package:practical/material_component/navigation_bar_list/model/itemclass.dart';
import 'package:practical/material_component/navigation_bar_list/screens/Home_screens.dart';
import 'package:practical/material_component/navigation_bar_list/screens/notification_screen.dart';
import 'package:practical/material_component/navigation_bar_list/screens/setting_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HoMEPaGE(),
    );
  }
}

class HoMEPaGE extends StatefulWidget {
  const HoMEPaGE({super.key});

  @override
  State<HoMEPaGE> createState() => _HoMEPaGEState();
}

class _HoMEPaGEState extends State<HoMEPaGE> {
  int SelectedIndex = 0;

  List<Item> ItemList = [];

  @override
  void initState() {
    ItemList.add(Item(
        title: "Home",
        screens: HomeScreenS(),
        ok1: Icons.home,
        ok2: Icons.home_outlined));
    ItemList.add(Item(
        title: "Notification",
        screens: NotificationScreens(),
        ok1: Icons.notification_important,
        ok2: Icons.notification_important_outlined));
    ItemList.add(
      Item(
          title: "Settings",
          screens: SettingScreenss(),
          ok1: Icons.settings,
          ok2: Icons.settings_applications_outlined),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ItemList[SelectedIndex].screens,
      bottomNavigationBar: NavigationBar(

        selectedIndex: SelectedIndex,
        indicatorColor: Colors.amberAccent,

        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,

        onDestinationSelected: (value) {

          setState(() {

            SelectedIndex = value;
          });
        },




        destinations: List.generate(
          ItemList.length,
          (index) => NavigationDestination(
            icon: Icon(ItemList[index].ok1),
            label: ItemList[index].title,
          selectedIcon: Icon(ItemList[index].ok2),

          ),
        ),
      ),
    );
  }
}
