import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:myapp_project/actions/show_Aapi.dart';
import 'package:myapp_project/actions/show_Mapi.dart';
import 'package:myapp_project/pages/2screen_page_api.dart';

// import 'package:myapp_project/actions/listvideo.dart';
// import 'package:myapp_project/actions/video.dart';

class pageRight extends StatefulWidget {
  const pageRight({super.key});
  
  @override
  State<pageRight> createState() => _ViewState();
}

class _ViewState extends State<pageRight> {

  
  @override
  Widget build(BuildContext context) {
    return SelectPageAPI();
  }
}
