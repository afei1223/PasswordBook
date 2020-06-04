import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../passBook.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List flag = [];
//  List<passBook> passList = <passBook>[];
  List<Map> listMap;

  Color diyCor = Colors.deepOrange;

  @override
  Widget build(BuildContext context) {

    selectDatabase();

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.refresh),
            onPressed: (){
              setState(() {
                selectDatabase();
              });
            },
          ),
        ],
        title: Text('List'),
        centerTitle: true,
//        backgroundColor: Colors.amber[600],
      flexibleSpace: Container(
        decoration: new BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xFF3CC2E9), Color(0xFF817DFB)]
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: new EdgeInsets.all(5.0),
//        itemExtent: 50.0,
        itemCount: (listMap == null)?0:listMap.length,
        itemBuilder: (BuildContext context,int index){
          return
            Column(
              children: <Widget>[

                GestureDetector(
                  child: new Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex:3,
                          child: Container(
                            alignment: Alignment.center,

                            height: 50,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  listMap[index]['appName'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  listMap[index]['authorName'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )

                              ],
                            ),
                            decoration: new BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [Color(0xFF3CC2E9), Color(0xFF817DFB)]
                              ),
                            ),
                          ),
                        ),
                        if(flag.length>0&&flag[index]==2)
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: new BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [ Color(0xFF817DFB),Colors.red]
                                  ),
                                ),
                                child: Icon(
                                    Icons.delete,
                                ),
                              ),
                              onTap: () => delItem(index,listMap[index]['id']),
                            ),
                          ),
                      ],
                    ),
                  ),
                  onTap: () => showCon(index,listMap.length),
                  onLongPress: () => showDel(index,listMap.length),
                ),

                if(flag.length>0&&flag[index]==1)
                  Container(
                    alignment: Alignment.center,

                    child: Column(
                      children: <Widget>[
                        Text(
                          '账号:'+listMap[index]['userName'],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '密码:'+listMap[index]['passWord'],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            );
//            onTap: showCon(index,list.length),
        },

      ),
    );
  }

  showCon(int index, int length) {
    setState(() {
      if(flag.length == 0){
        for(int i=0;i<length;i++){
          flag.add(0);
        }
      }
      if(flag[index] == 1){
        flag[index] = 0;
      }else{
        for(int i=0;i<length;i++){
          flag[i] = 0;
        }
        flag[index] = 1;
      }

    });

  }

  Future<void> selectDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath,'hyl.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE IF NOT EXISTS PassWord (id INTEGER PRIMARY KEY, appName TEXT, authorName  TEXT, passWord TEXT,userName TEXT);');
        });
    listMap = await database.rawQuery('SELECT * FROM PassWord');
    print(listMap.length);
    for(int i=0;i<listMap.length;i++){
      print(listMap[i]);
    }
//
//    if(passList.length != listMap.length){
//      passList.clear();
//     }
//    passBook pa = new passBook();
//    for(int i=0;i<listMap.length;i++){
//      pa.appName = listMap[i]['appName'];
//      pa.authorName = listMap[i]['authorName'];
//      pa.password = listMap[i]['passWord'];
//      pa.userName = listMap[i]['userName'];
//      passList.add(pa);
//      print("$i "+pa.appName);
//      print(passList[i].appName);
//    }
//    for(int i=0;i<passList.length;i++)
//      print(passList[i].userName);
    await database.close();
  }

  showDel(int index, int length) {
    setState(() {
      if(flag.length == 0){
        for(int i=0;i<length;i++){
          flag.add(0);
        }
      }
      if(flag[index] == 2){
        flag[index] = 0;
      }else{
        for(int i=0;i<length;i++){
          flag[i] = 0;
        }
        flag[index] = 2;
      }

    });
  }

  delItem(int index, int id) async {
    print('123');
    String databasePath = await getDatabasesPath();
    String path = join(databasePath,'hyl.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE IF NOT EXISTS PassWord (id INTEGER PRIMARY KEY, appName TEXT, authorName  TEXT, passWord TEXT,userName TEXT);');
        });
    var count = await database.rawDelete('DELETE FROM PassWord WHERE id = ?', [id]);

    setState(() {
      selectDatabase();
      flag[index] = 0;
    });
//    showDel(index, length);
  }

}

