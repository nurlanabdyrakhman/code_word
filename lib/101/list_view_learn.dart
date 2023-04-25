import 'package:code_word/controller/post_controller.dart';
import 'package:code_word/services/dio_services.dart';
import 'package:code_word/utils/colots.dart';
import 'package:code_word/utils/constants.dart';
import 'package:code_word/view/page/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ListViewLearn extends StatelessWidget {
  ListViewLearn({super.key});

  int conter = 0;

  late final List<ColloctionModel> _items;

  PostController postController = Get.put(PostController());

  @override
  

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      title: Text(
        'API-Dio',
      ),
      centerTitle: true,
    );
   
    return Scaffold(
      appBar: appBar2,
      floatingActionButton: Obx(
       
        ()=>  postController.isInternerConnect.value?
        FloatingActionButton(
          backgroundColor: MyColors.prColor,
          onPressed: (){
           postController.isListViewScroolToDown.value?
           postController.scrollListViewUpward():
            postController.scrollListViewDownWord();
          },
          
        child: FaIcon(
           postController.isListViewScroolToDown.value?
          FontAwesomeIcons.arrowUp:
           FontAwesomeIcons.arrowDown
         
      
        ),
        ):Container(),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Obx(
          () => postController.isInternerConnect.value
              ? postController.isLoading.value
                  ? _buildLoading()
                  : _buildBody()
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        
                        width: 150,
                        height: 150,
                        child: Lottie.asset('assets/b.json'),
                      ),
                      MaterialButton(
                        onPressed: ()async {
                        if(await InternetConnectionChecker().hasConnection==true){
                          postController.getPosts();
                        }else {
                         showCustomSnackBar(context);
                        }
                        },
                        color: MyColors.prColor,
                        child: Text('Try again',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return RefreshIndicator(
      color: Colors.green,
      onRefresh: () {
        return postController.getPosts();
      },
      child: ScrollablePositionedList.builder(
         itemScrollController:postController.itemScrollController,
        physics: BouncingScrollPhysics(),
        itemCount: postController.posts.length,
        itemBuilder: (cxt, i) {
          return InkWell(
            onTap: () {
              Get.to(DetailsPage(index: i), transition: Transition.cupertino);
            },
            child: Card(
              color: Colors.cyan,
              child: ListTile(
                leading: Container(
                  height: 70,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(postController.posts[i].id.toString()),
                  ),
                ),
                title: Text(postController.posts[i].title),
                subtitle: Text(
                  postController.posts[i].body,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _buildLoading extends StatelessWidget {
  const _buildLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset('assets/a.json'),
      ),
    );
  }
}

class ColloctionModel {
  final String ImagePath;
  final String title;
  final double price;

  ColloctionModel(
      {required this.ImagePath, required this.title, required this.price});
}
