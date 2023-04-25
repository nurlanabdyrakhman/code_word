import 'package:code_word/101/model/photosh_model.dart';
import 'package:code_word/services/api_service.dart';
import 'package:get/get.dart';
class SimpleUiController extends GetxController{
  var selectedIndex=0.obs;
    RxList<PhotoshModel> photos=RxList();
    RxBool isLoading=true.obs;
    RxString ordersBy='Latest'.obs;
  List<String> orders =[
   'latest',
     'oldest',
     'popular',
     'views'
  ];
  getPhotos()async{
    isLoading.value=true;
    var response= await ApiService().getMethot(
      'https://api.unsplash.com/photos/?per_page30&order_by=${ordersBy.value}&client_id=JXZHmpmkPOi2khheI9OeU-Ebzb4TfxsWQMH8FUtlvsw',

     
      );
      photos=RxList();
      if(response.statusCode==200){
        response.data.forEach((elm){
       photos.add(PhotoshModel.fromJson(elm));
        });
          isLoading.value=false;
      }
  }

    orderFunc(String newVal){
      ordersBy.value=newVal;
      getPhotos();
    }
  @override
  void onInit() {
    getPhotos();
    super.onInit();
  }
}