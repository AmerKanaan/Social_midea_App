import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class MyLocalController extends GetxController{
  


  void changelange(String codelang){
    Locale locale =Locale(codelang);
    Get.updateLocale(locale);
  }
}