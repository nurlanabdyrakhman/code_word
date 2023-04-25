import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../controller/simpleUiController.dart';

class DetailView extends StatelessWidget {
  DetailView({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    SimpleUiController homeController = Get.put(SimpleUiController());
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Hero(
          tag: homeController.photos[index].id!,
          child: CachedNetworkImage(
            imageUrl: homeController.photos[index].urls!['regular']!,
            imageBuilder: (context, imageProvider) => Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    
                  ),
                ),
               // Positioned(child: child)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
