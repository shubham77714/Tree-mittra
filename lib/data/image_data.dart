class ImageList{
  static List<ImageData>? imageList;

}

class ImageData{
  final int id;
  final String name;
  final String? desc;
  final String date;
  final String image;
  final String thumbnail;
  final String createdAt;
  final String updatedAt;

  ImageData({required this.id, required this.name, required this.desc, required this.date, required this.image, required this.thumbnail, required this.createdAt, required this.updatedAt});

  factory ImageData.fromMap(Map<dynamic,dynamic> map){
    return ImageData(
      id: map["id"], 
      name: map["name"], 
      desc: map["description"], 
      date: map["date"],
      image: map["image"],
      thumbnail: map["thumbnail"],
      createdAt: map["created_at"],
      updatedAt: map["updated_at"]
    );
  }

  // toMap() => {
  //   "id":id,
  //   "name":name,
  //   "description":desc,
  //   "date":date,
  //   "thumbnail":thumbnail,
  //   "image":image,
  //   "created_at":createdAt,
  //   "updated_at":uploadedAt
  // };

}