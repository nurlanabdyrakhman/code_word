
class PhotoshModel{
  String? id;
  String? createdAt;
  String? color;
  Map <String,dynamic>? urls;
  PhotoshModel({
     this.id,this.createdAt,this.color,this.urls,
  });
  PhotoshModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    createdAt=json['created_at'];
    color=json['color'];
    urls=json['urls'];
  }
}