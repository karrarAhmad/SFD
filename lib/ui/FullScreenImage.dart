
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  
  String tag;
  String imagUrl;
   FullScreenImage( this.imagUrl,this.tag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              "الصورة الكاملة",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:   Hero(
            tag: tag,
                      child: CachedNetworkImage(
                          fit: BoxFit.cover,
                         width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
                          imageUrl: imagUrl,
                          placeholder: (context, url) =>
                              Image.asset("assets/images/fff.jpg"),
                          errorWidget: (context, url, error) =>
                              Image.asset("assets/images/fff.jpg"),
                        ),
          ), )
    );
  }
}