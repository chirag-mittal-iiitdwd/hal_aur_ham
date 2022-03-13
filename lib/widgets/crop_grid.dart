import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cropItems.dart';

class CropGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cropData = Provider.of<CropItems>(context);
    final crops = cropData.items;
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: crops.length,
      itemBuilder: (ctx, i) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 2)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GridTile(
            child: GestureDetector(
              onTap: () {},
              child: Image.network(
                crops[i].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(crops[i].name),
            ),
          ),
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
