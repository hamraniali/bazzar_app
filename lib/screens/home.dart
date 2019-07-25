import 'package:flutter/material.dart';

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
        body: Apps(),
      ),
      textDirection: TextDirection.rtl,
    );
  }
}

class Apps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Apps();
  }
}

class _Apps extends State<Apps> {
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
                      return FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child: Container(
                                child: Image.network(
                                    'https://dl.myket.ir/newresizing/resize/medium/png/icon/app.tandori.network_2e7db903-23c3-499f-9e49-547e85311a57.png'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('برنامه شماره 1'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'شرکت برنامه نویسی',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 11),
                                ),
                              ),
                            )
                          ],
                        ), onPressed: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1,width: fullWidth,color: Colors.grey[300],margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10,),),
          /////////////////////////// Secend Section of Apps ///////////////////////////////
          
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
                      return FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child: Container(
                                child: Image.network(
                                    'https://dl.myket.ir/newresizing/resize/medium/png/icon/app.tandori.network_2e7db903-23c3-499f-9e49-547e85311a57.png'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('برنامه شماره 1'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'شرکت برنامه نویسی',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 11),
                                ),
                              ),
                            )
                          ],
                        ), onPressed: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1,width: fullWidth,color: Colors.grey[300],margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10,),),

          //////////////////////////// Third Section of Apps /////////////////////////////////////
          
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
                      return FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child: Container(
                                child: Image.network(
                                    'https://dl.myket.ir/newresizing/resize/medium/png/icon/app.tandori.network_2e7db903-23c3-499f-9e49-547e85311a57.png'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('برنامه شماره 1'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'شرکت برنامه نویسی',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 11),
                                ),
                              ),
                            )
                          ],
                        ), onPressed: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1,width: fullWidth,color: Colors.grey[300],margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10,),),

          ///////////////////// Section Four of Apps //////////////////////////////////
          

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
                      return FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child: Container(
                                child: Image.network(
                                    'https://dl.myket.ir/newresizing/resize/medium/png/icon/app.tandori.network_2e7db903-23c3-499f-9e49-547e85311a57.png'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('برنامه شماره 1'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'شرکت برنامه نویسی',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 11),
                                ),
                              ),
                            )
                          ],
                        ), onPressed: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1,width: fullWidth,color: Colors.grey[300],margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10,),),

          //////////////// Section Five of Apps /////////////////////////////////
          

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
                      return FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child: Container(
                                child: Image.network(
                                    'https://dl.myket.ir/newresizing/resize/medium/png/icon/app.tandori.network_2e7db903-23c3-499f-9e49-547e85311a57.png'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('برنامه شماره 1'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'شرکت برنامه نویسی',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 11),
                                ),
                              ),
                            )
                          ],
                        ), onPressed: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1,width: fullWidth,color: Colors.grey[300],margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10,),),
        ],
      ),
    );
  }
}
