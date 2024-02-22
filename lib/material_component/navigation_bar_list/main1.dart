import 'package:flutter/material.dart';
import 'package:practical/material_component/navigation_bar_list/model/itemclass.dart';
import 'package:practical/material_component/navigation_bar_list/screens/Home_screens.dart';
import 'package:practical/material_component/navigation_bar_list/screens/notification_screen.dart';
import 'package:practical/material_component/navigation_bar_list/screens/setting_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: NEwHomewPage());
  }
}

class NEwHomewPage extends StatefulWidget {
  const NEwHomewPage({super.key});

  @override
  State<NEwHomewPage> createState() => _NEwHomewPageState();
}

class _NEwHomewPageState extends State<NEwHomewPage> {
  int NEwIndex = 0;

  List<Item> NewItemList = [];

  @override
  void initState() {
    NewItemList.add(Item(
        title: "Home1",
        screens: HomeScreenS(),
        ok1: Icons.add_alarm,
        ok2: Icons.add_alert_sharp));
    NewItemList.add(Item(
        title: "Notification",
        screens: NotificationScreens(),
        ok1: Icons.notifications,
        ok2: Icons.add_alert_sharp));
    NewItemList.add(
      Item(
          title: "Super",
          screens: SettingScreenss(),
          ok1: Icons.settings_backup_restore,
          ok2: Icons.settings_bluetooth),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(NewItemList[NEwIndex].title),
      ),
      body: NewItemList[NEwIndex].screens,
      bottomNavigationBar: NavigationBar(

        selectedIndex: NEwIndex,
        indicatorColor: Colors.cyanAccent,
        onDestinationSelected: (value) {

          setState(() {

            NEwIndex = value;

          });
        },



        destinations: List.generate(
          NewItemList.length,
          (index) => NavigationDestination(
            icon: Icon(NewItemList[index].ok1),
            label: NewItemList[index].title,
            selectedIcon: Icon(NewItemList[index].ok2),
          ),
        ),
      ),
    );
  }
}
