import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../controller/simpleUiController.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class DetailView extends StatelessWidget {
  DetailView({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    SimpleUiController  simpleUiController = Get.put(SimpleUiController());
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Hero(
          tag:  simpleUiController.photos[index].id!,
          child: CachedNetworkImage(
            imageUrl:  simpleUiController.photos[index].urls!['regular']!,
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
                Positioned(
                  bottom: 10,
                  child: Text( simpleUiController.photos[index].createdAt!
                  .substring(0,10)
                  .replaceAll('-', '/'),
                  style: const TextStyle(color: Colors.white,fontSize: 15,),
                  ))
              ],
            ),
            placeholder: (context,url)=>Center(
              child: LoadingAnimationWidget.flickr(
                leftDotColor: Colors.pink, 
                rightDotColor: Colors.black,
                 size: 35),
            ),
            errorWidget: (context, url,error)=>const Icon(Icons.image_not_supported_rounded,
            color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
