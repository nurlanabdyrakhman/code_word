import 'package:code_word/101/model/post_model.dart';
import 'package:code_word/services/dio_services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
class PostController extends GetxController{
RxList<PostModel>posts=RxList();
RxBool isLoading =true.obs;
RxBool isInternerConnect=true.obs;
RxBool isListViewScroolToDown=false.obs;
var url='https://jsonplaceholder.typicode.com/posts';
var  itemScrollController= ItemScrollController();
getPosts()async{
   isInternerConnectFunc();
   isLoading.value=true;
 var response= await DioServices().getMedhut(url);
 if(response.statusCode==200){
   response.data.forEach((element){
   posts.add(PostModel.fromJson(element));
    });
   isLoading.value=false;
 }

}

  isInternerConnectFunc()async{
    isInternerConnect.value= await  InternetConnectionChecker().hasConnection;
  }

  scrollListViewDownWord(){
    itemScrollController.scrollTo(
            index: posts.length-4,
             duration: Duration(milliseconds: 2000),
             curve:Curves.fastOutSlowIn 
             );
             isListViewScroolToDown.value=true;
  }
  scrollListViewUpward(){
    itemScrollController.scrollTo(
            index: 0,
             duration: Duration(milliseconds: 2000),
             curve:Curves.fastOutSlowIn 
             );
             isListViewScroolToDown.value=false;
  }
  @override
 void onInit(){
  isInternerConnectFunc();
  getPosts();
  super.onInit();
 }
}