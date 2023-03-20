import 'package:flutter/foundation.dart';

class SliderScreenprovider extends ChangeNotifier
{
  int indexofinage = 0;
  List images = [
    "assets/images/im1.jpg",
    "assets/images/im2.jpg",
    "assets/images/im3.jpg",
    "assets/images/im4.jpg",
    "assets/images/im5.jpg",
    "assets/images/im6.jpg",
  ];

  void changeindex(int index)
  {
    indexofinage = index;
    notifyListeners();
  }

}