import 'package:flutter/material.dart';
import '../screens/Crop_Scan.dart';
import '../screens/Home_Screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF679B6D),
      child: ListView(
        //Logo
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xFFB3C1B3)),
            child: Row(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset("assets/images/App_Logo.png"),
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Hal", textScaleFactor: 2),
                    Text("Aur", textScaleFactor: 2),
                    Text("Ham", textScaleFactor: 2),
                  ],
                )
              ],
            ),
          ),
          //Settings
          ListTile(
            // onTap:() => Navigator.pushNamed(context, routeName),
            title: Text(
              "Settings",
              textScaleFactor: 2,
            ),
            trailing: Icon(
              Icons.settings,
            ),
          ),
          //My Farm
          ListTile(
            onTap: () => Navigator.of(context).pushNamed(HomeScreen.routeName),
            title: Text(
              "My Farm",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.home),
          ),
          //Sunscription
          ListTile(
            title: Text(
              "Subscription",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.monetization_on_outlined),
          ),
          //Crop Scan
          ListTile(
            onTap: () => Navigator.of(context).pushNamed(CropScan.routeName),
            title: Text(
              "Crop Scan",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.document_scanner_outlined),
          ),
          //Crop Viz.
          ListTile(
            title: Text(
              "Crop Viz.",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.auto_graph_rounded),
          ),
          //Logout
          ListTile(
            title: Text(
              "Logout",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.logout_rounded),
          ),
        ],
      ),
    );
  }
}
