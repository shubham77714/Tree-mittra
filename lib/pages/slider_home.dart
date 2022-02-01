import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tree_mitra/data/image_data.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';

import '../widgets/my_drawer.dart';


class SliderHome extends StatefulWidget {
  const SliderHome({ Key? key }) : super(key: key);

  @override
  State<SliderHome> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {

  final url = "http://treemitra.creatershouse.com/public/api/wallpaper";

  @override
  void initState() {
    super.initState();
    loadState();
  } 

  loadState() async{
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
              icon: Icon(
                CupertinoIcons.bars,
                color: Colors.yellow.shade900,
                size: 40,
              ).p12()
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        drawer: const MyDrawer(),
        body: (ImageList.imageList!=null && ImageList.imageList!.isNotEmpty)?const MySlider() 
          :const Center(
            child: CircularProgressIndicator()
          )
      );
  }
}


class MySlider extends StatelessWidget {
  const MySlider({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          autoPlayCurve: Curves.easeInQuint,
          viewportFraction: 1.0,
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          initialPage: Random().nextInt(ImageList.imageList!.length),
        ),
        items: ImageList.imageList!
            .map(
              (item) => Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image(
                      image: NetworkImage("http://treemitra.creatershouse.com/public/wallpaper/" + item.thumbnail),
                      loadingBuilder: (context, child, loadingProgress) {
                        return const CircularProgressIndicator(color: Colors.black,);
                      },
                    ).image,
                    fit: BoxFit.fill
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VxArc(
                      height: 22,
                      arcType: VxArcType.CONVEX,
                      edge: VxEdge.TOP,
                      child: Container(
                        height: MediaQuery.of(context).size.height/2.4,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                item.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.underline,
                                  fontFamily: "font1"
                                ),
                              ).p12(),
                            ),
                            Text(
                              "Date: ${item.date}",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white70
                              ),
                            ).p20(),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  item.desc.toString(),
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                  ),
                                ).px16(),
                              ),
                            ),
                            Text(
                              "last updated on: ${item.updatedAt}",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white60
                              ),
                            ).p16(),

                          ],
                        ),
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
              )
            )
            .toList()
    );
  }
}