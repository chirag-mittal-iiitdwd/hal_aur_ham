import 'package:flutter/material.dart';

import '../widgets/Main_Drawer.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final appBar = AppBar(
      title: Text('User Profile'),
    );

    return Scaffold(
      appBar: appBar,
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: mediaQuery.size.height * 0.5 - appBar.preferredSize.height-mediaQuery.padding.top,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://images.nightcafe.studio//assets/profile.png?tr=w-1600,c-at_max'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.2 - appBar.preferredSize.height-mediaQuery.padding.top,
            ),
            Text('Start'),
          ],
        ),
      ),
    );
  }
}
