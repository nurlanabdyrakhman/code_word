

import 'package:code_word/components/components.dart';
import 'package:code_word/controller/simpleUiController.dart';
import 'package:code_word/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  SimpleUiController simpleUiController = Get.put(SimpleUiController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ApiService().getMethot(
        'https://api.unsplash.com/photos?30order_by=oldets&client_id=JXZHmpmkPOi2khheI9OeU-Ebzb4TfxsWQMH8FUtlvsw');
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              MyAppBar(size: size),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(flex: 1, child: _buildTabBar()),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      flex: 13,
                      child: Obx(
                        () => simpleUiController.isLoading.value?Center(
                          child: customLoading(),
                        ):
                        
                        
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GridView.custom(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate: SliverQuiltedGridDelegate(
                              crossAxisCount: 4,
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4,
                              repeatPattern: QuiltedGridRepeatPattern.inverted,
                              pattern: const [
                                QuiltedGridTile(2, 2),
                                QuiltedGridTile(1, 1),
                                QuiltedGridTile(1, 1),
                                QuiltedGridTile(1, 2),
                              ],
                            ),
                            childrenDelegate: SliverChildBuilderDelegate(
                              childCount: simpleUiController.photos.length,
                              (context, index) {
                                return Container(
                                  child: CachedNetworkImage(
                                    imageUrl: simpleUiController
                                        .photos[index].urls!['small'],
                                    imageBuilder: (ctx, img) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: img,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                    placeholder: (context, url) => Center(
                                      child: customLoading(),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Center(
                                      child: errorIcon(),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return ListView.builder(
      itemCount: simpleUiController.orders.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Obx(
          () => GestureDetector(
            onTap: () {
              simpleUiController.orderFunc(simpleUiController.orders[index]);
              simpleUiController.selectedIndex.value = index;
            },
            child: AnimatedContainer(
              margin: EdgeInsets.fromLTRB(index == 0 ? 15 : 5, 0, 5, 0),
              width: 100,
              decoration: BoxDecoration(
                color: index == simpleUiController.selectedIndex.value
                    ? Colors.purple
                    : Colors.grey,
                borderRadius: BorderRadius.circular(
                    index == simpleUiController.selectedIndex.value ? 18 : 15),
              ),
              duration: const Duration(milliseconds: 300),
              child: Center(
                child: Text(
                  simpleUiController.orders[index],
                  style: TextStyle(
                      color: index == simpleUiController.selectedIndex.value
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: size.width,
        height: size.height / 3.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
            image: const AssetImage('assets/travel.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Text(
              'What would you like\n to Find',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              width: double.infinity,
              height: 50,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(225, 228, 228, 0),
                  contentPadding: const EdgeInsets.only(top: 5),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color.fromARGB(255, 146, 146, 146),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 131, 131, 131),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
