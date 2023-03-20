import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:images_slider/home/provider/slider_provider.dart';
import 'package:images_slider/home/view/slider_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderScreenprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => Slider_screen()},
      ),
    ),
  );
}