import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/homeModel.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 3,
          centerTitle: true,
          title: Text(
            'بازار',
            style: TextStyle(
                color: Color.fromRGBO(145, 180, 47, 1),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          leading: Icon(
            Icons.person,
            size: 30,
            color: Color.fromRGBO(145, 180, 47, 1),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.help,
                size: 30,
                color: Color.fromRGBO(145, 180, 47, 1),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Color.fromRGBO(145, 180, 47, 1),
              ),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color.fromRGBO(145, 180, 47, 1),
                  ),
                  title: Text(
                    'صفحه اصلی',
                    style: TextStyle(color: Color.fromRGBO(145, 180, 47, 1)),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.equalizer,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'برترین ها',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.reorder,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'دسته ها',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'جستوجو',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.file_download,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'برنامه های من',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
            ],
          ),
        ),
        body: ShowApps(),
      ),
      textDirection: TextDirection.rtl,
    );
  }
}

class ShowApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShowApps();
  }
}

class _ShowApps extends State<ShowApps> {
  List<Apps> list;

  Future<List<Apps>> getApps() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/photos');
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      list = data.map<Apps>((json) => Apps.fromJson(json)).toList();
      return list;
    } else {
      throw Exception('اطلاعات دریافت نشد');
    }
  }

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width * 1;
    var fullHeight = MediaQuery.of(context).size.height * 1;
    return Container(
      child: ListView(
        children: <Widget>[
          RaisedButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.grey[500],
              ),
              leading: Text(
                'برترین بازی ها',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.transparent,
            elevation: 0,
          ),
          Container(
            height: 180,
            width: fullWidth,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 180,
                  width: fullWidth,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 17,
                    itemBuilder: (BuildContext context, int index) {
                      return FutureBuilder(
                        future: getApps(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            String title = snapshot.data[index].title;
                            return SizedBox(
                              width: 120,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                      margin: EdgeInsets.all(10),
                                      width: 100,
                                      height: 100,
                                      child: Container(
                                        child: Image.network(snapshot.data[index].thumbnailUrl),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                        width: 130,
                                        child: Container(child: Text(title,maxLines: 1,),),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                        width: 130,
                                        child: Container(child: Text(
                                          'شرکت برنامه نویسی',
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 11),
                                        ),)
                                      ),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            );
                          } else {
                            return SizedBox(
                              width: 120,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(10),
                                      // ),
                                      color: Colors.grey[200],
                                      margin: EdgeInsets.all(10),
                                      width: 100,
                                      height: 100,
                                      child: Container(width: 0,height: 0,),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment:Alignment.centerRight,
                                        width: 130,
                                        height: 30,
                                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                                        child: Container(width: 80,height: 30,color: Colors.grey[200],),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment:Alignment.centerRight,
                                        width: 130,
                                        height: 30,
                                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                                        child: Container(width: 100,height: 20,color: Colors.grey[200],),
                                      ),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: fullWidth,
            color: Colors.grey[300],
            margin: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
          ),
        ],
      ),
    );
  }
}