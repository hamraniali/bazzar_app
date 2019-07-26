import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Apps {
  String title;
  String thumbnailUrl;
  int id;
  Apps({this.title , this.thumbnailUrl , this.id});
  factory Apps.fromJson(Map<String,dynamic> json) {
    return Apps(
      title: json['title'],
      thumbnailUrl : json['thumbnailUrl'],
      id: json['id']
      );
  }
}