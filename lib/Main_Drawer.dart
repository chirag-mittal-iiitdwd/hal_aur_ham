import 'package:flutter/material.dart';

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
                  child: Image.asset("assets/images/App_Logo.png"),
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
          const ListTile(
            title: Text(
              "Settings",
              textScaleFactor: 2,
            ),
            trailing: Icon(
              Icons.settings,
            ),
          ),
        //My Farm
          const ListTile(
            title: Text(
              "My Farm",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.home),
          ),
        //Sunscription
          const ListTile(
            title: Text(
              "Subscription",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.monetization_on_outlined),
          ),
        //Crop Scan
          const ListTile(
            title: Text(
              "Crop Scan",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.document_scanner_outlined),
          ),
        //Crop Viz.
          const ListTile(
            title: Text(
              "Crop Viz.",
              textScaleFactor: 2,
            ),
            trailing: Icon(Icons.auto_graph_rounded),
          ),
        //Logout
          const ListTile(
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
