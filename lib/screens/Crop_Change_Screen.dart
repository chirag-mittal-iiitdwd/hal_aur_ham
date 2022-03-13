import 'package:flutter/material.dart';

import '../widgets/Main_Drawer.dart';
import '../widgets/crop_grid.dart';

class CropChange extends StatelessWidget {
  static const routeName='/cropChange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: CropGrid(),
    );
  }
}
