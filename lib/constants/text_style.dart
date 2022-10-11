import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
AppBar appBar= AppBar();
final appbarHeight=appBar.preferredSize;

class AppStyle{


static   TextStyle regularRoboto({Color? color, double? size}) => GoogleFonts.roboto(
    fontWeight: FontWeight.normal,
    fontSize: size ?? 16,
    color: color ?? Colors.black,
  );
static TextStyle mediumRoboto({Color? color, double? size}) => GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: size ?? 16,
    color: color ?? Colors.black,
  );
static TextStyle LowMediumRoboto({Color? color, double? size}) => GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: size ?? 16,
    color: color ?? Colors.black,
  );
static  TextStyle boldRoboto({Color? color, double? size}) => GoogleFonts.roboto(
    fontWeight: FontWeight.bold,
    fontSize: size ?? 16,
    color: color ?? Colors.black,
  );
//app page padding
static const appAllPadding15 = EdgeInsets.all(15);
static const appAllPadding5 = EdgeInsets.all(5);
static const appAllPadding10 = EdgeInsets.all(10);
static const appAllPadding20 = EdgeInsets.all(20);
static const appAllPadding30 = EdgeInsets.all(30);
static const appSymmetricPaddingH10 = EdgeInsets.symmetric(horizontal: 10);
static const appSymmetricPaddingH15 = EdgeInsets.symmetric(horizontal: 15);
static const appSymmetricPaddingH30 = EdgeInsets.symmetric(horizontal: 30);
static const appSymmetricPaddingV10 = EdgeInsets.symmetric(vertical: 10);
static const appSymmetricPaddingV15 = EdgeInsets.symmetric(vertical: 15);
static const appSymmetricPaddingV25 = EdgeInsets.symmetric(vertical: 25);
static const appSymmetricPaddingV5 = EdgeInsets.symmetric(vertical: 5);

//decoration
 static final greenContainerDecoration =BoxDecoration(
   color: Colors.green,
   borderRadius: BorderRadius.circular(50),
 );
 static final imageTextContainerDecoration =BoxDecoration(
   color: Colors.white,
   borderRadius: BorderRadius.circular(3),
 );
}