import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tree_mitra/data/image_data.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';

import '../widgets/my_drawer.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final url = "http://treemitra.creatershouse.com/public/api/wallpaper";

  @override
  void initState() {
    super.initState();
    loadState();
  } 

  loadState() async{
    await Future.delayed(const Duration(seconds: 2));

    final response = await http.get(Uri.parse(url));
    final imageJson= response.body ;

    final decodedData = jsonDecode(imageJson);
    var imgData = decodedData["data"];
    ImageList.imageList =List.from(imgData).map<ImageData>((e) => ImageData.fromMap(e)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (context)=> IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              }, 
            icon: const Icon(CupertinoIcons.ellipsis_vertical,color: Colors.white)),
          ),
          title: Image.asset("assets/images/tree_mittra.png"),
          backgroundColor: Colors.lightGreen,
        ),
        drawer: const MyDrawer(),
        body: (ImageList.imageList!=null && ImageList.imageList!.isNotEmpty)?const MyGrid() 
        :const Center(
          child: CircularProgressIndicator()
        )
      );
  }
}




class MyGrid extends StatefulWidget {
  const MyGrid({ Key? key }) : super(key: key);

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,        
      ),
      itemCount: ImageList.imageList!.length,
      itemBuilder: (context,index){
        final img = ImageList.imageList![index];
        return GridTile(
          child: Container(
          decoration: BoxDecoration(                              //!image
            image: DecorationImage(
              image: NetworkImage("http://treemitra.creatershouse.com/public/wallpaper/" + img.thumbnail),
              fit: BoxFit.fill,
            ), 
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(                                          //!image date
                alignment: Alignment.topLeft,
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.4),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    )
                  ),
                  child: Text(
                    img.createdAt,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ).p8(),
                ),
              ),
            Align(                                    //!image name
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)
                  )
                ),
                child: Text(
                  img.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  )
                ).px12(),
              ),
            ),
            ]
          ),
        ).p8()
      );
    }
    );
  }
}