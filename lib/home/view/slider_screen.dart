import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:images_slider/home/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class Slider_screen extends StatefulWidget {
  const Slider_screen({Key? key}) : super(key: key);

  @override
  State<Slider_screen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<Slider_screen> {
  SliderScreenprovider? sliderScreenprovider;

  @override
  Widget build(BuildContext context) {
    sliderScreenprovider = Provider.of<SliderScreenprovider>(context, listen: true);
    sliderScreenprovider = Provider.of<SliderScreenprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Image Slider"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "${sliderScreenprovider!.images[index]}",
                    fit: BoxFit.cover,
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                height: 200,
                onPageChanged: (index, reason) {
                  sliderScreenprovider!.changeindex(index);
                },
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sliderScreenprovider!
                  .images
                  .asMap()
                  .entries
                  .map((e) => Container(
                   margin:EdgeInsets.symmetric(horizontal: 8),
                   height: 10,width: 10,
                   decoration: BoxDecoration(
                       color: sliderScreenprovider!.indexofinage==e.key?Colors.black:Colors.black45,
                       shape: BoxShape.circle),
                 ),
                )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}