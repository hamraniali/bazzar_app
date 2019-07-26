import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Apps {
  String title;
  Apps({this.title});
  factory Apps.fromJson(Map<String,dynamic> json) {
    return Apps(title: json['title']);
  }
}