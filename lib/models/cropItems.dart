import 'package:flutter/cupertino.dart';

import './CropItem.dart';

class CropItems with ChangeNotifier {
  final List<CropItem> _items = [
    CropItem(
      id: '1',
      imageUrl: 'https://images.indianexpress.com/2021/02/grapes-1200.jpg',
      name: 'Grapes',
    ),
    CropItem(
      id: '2',
      imageUrl:
          'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/8/19/w600X390/abundance-apples-delicious-2487443.jpg',
      name: 'Apple',
    ),
    CropItem(
      id: '3',
      imageUrl:
          'https://www.gardeningknowhow.com/wp-content/uploads/2021/08/Orange-fruits.jpg',
      name: 'Orange',
    ),
    CropItem(
      id: '4',
      imageUrl:
          'https://www.pritikin.com/wp/wp-content/uploads/2014/03/corn-600x370.jpg',
      name: 'Corn',
    ),
    CropItem(
      id: '5',
      imageUrl:
          'https://cdn.britannica.com/89/140889-050-EC3F00BF/Ripening-heads-rice-Oryza-sativa.jpg',
      name: 'Rice',
    ),
    CropItem(
      id: '6',
      imageUrl:
          'http://justfunfacts.com/wp-content/uploads/2021/01/sugarcane.jpg',
      name: 'SugarCane',
    ),
    CropItem(
      id: '7',
      imageUrl: 'https://scx2.b-cdn.net/gfx/news/2020/wheat.jpg',
      name: 'Wheat',
    ),
    CropItem(
      id: '8',
      imageUrl:
          'https://images-prod.healthline.com/hlcmsresource/images/AN_images/tomatoes-1296x728-feature.jpg',
      name: 'Tomato',
    ),
    CropItem(
      id: '9',
      imageUrl:
          'https://www.gannett-cdn.com/presto/2020/06/26/PBUR/0d0d85a6-1ee5-4764-8f7b-01780475dcf4-BUR20200626Strawberries.jpg',
      name: 'Strawberry',
    ),
    CropItem(
      id: '10',
      imageUrl:
          'http://mobileimages.lowes.com/productimages/a6999675-2072-47ad-a26b-f69206d19899/11901301.jpg',
      name: 'Blueberry',
    ),
    CropItem(
      id: '11',
      imageUrl:
          'https://retail.degroot-inc.com/wp-content/uploads/2018/09/Majestic_Peach.jpg',
      name: 'Peach',
    ),
    CropItem(
      id: '12',
      imageUrl:
          'https://4.imimg.com/data4/YD/LR/MY-8729085/yellow-capsicum-plants-500x500.jpg',
      name: 'Capsicum',
    ),
  ];

  List<CropItem> get items {
    return [..._items];
  }
}
