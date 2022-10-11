import 'dart:io';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final File? fileImage;
  final String? placeholder;
  final double? radius;

    CustomImage({
    this.height,
    this.width,
    this.image,
    this.fileImage,
    this.radius,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius!),
        child: (image == null || image!.isEmpty)
            ? Image.asset('images/$placeholder')
            : (image!.contains("http") || image!.contains("file"))
                ? CachedNetworkImage(
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    imageUrl: image!,
                    placeholder: (context, url) => Container(
                        child: Center(
                            child:  CircularProgressIndicator(
                                valueColor:  AlwaysStoppedAnimation<Color>(
                                    Colors.black)))),
                    errorWidget: (context, url, error) => Container(
                      height: width,
                      width: height,
                      decoration: BoxDecoration(
                        /*  color: Color(0xFFdbdbdb),*/
                        borderRadius: BorderRadius.circular(radius!),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(('images/$placeholder'))),
                        /* new Image.asset('assets/test.jpg')*/
                      ),
                    ),
                  )
                : Image.memory(base64Decode(image!)),
      ),
    );
  }
}
