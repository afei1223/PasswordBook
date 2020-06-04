import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  TextEditingController passwordController = new TextEditingController();
  TextEditingController idController = new TextEditingController();
  TextEditingController userController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xFF3CC2E9), Color(0xFF817DFB)]
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              top: 50,
//              right: 10,
              bottom: 10,
          ),
            child: Container(
              child: TextField(
                controller: idController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: '请输入软件名称',
                  labelStyle: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.green[400],
                  ),
                ),
              ),
              width: 300,
            )
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 40,
//              right: 10,
              bottom: 10,
            ),
            child: Container(
              child: TextField(
                controller: userController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: '请输入账号',
                  labelStyle: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.green[400],
                  ),
                ),
              ),
              width: 300,
            )
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 40,
//              right: 10,
              bottom: 10,
            ),
            child: Container(
              child: TextField(
                controller: passwordController,
                obscureText: !showPassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: '请你输入密码',
                  labelStyle: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.green[400],
                  ),
                  suffixIcon: showPassword? CupertinoButton(
                    onPressed: () {
                      setState(() {
                        showPassword = false;
                      });
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    minSize: 0,
                    pressedOpacity: 1,
                    child: Image.asset('assets/password/password_show.png'),
                  ):CupertinoButton(
                    onPressed: () {
                      setState(() {
                        showPassword = true;
                      });
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    minSize: 0,
                    pressedOpacity: 1,
                    child: Image.asset('assets/password/password_hide.png'),
                  ),
                ),
              ),
              width: 300,
            )
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 40,
//              right: 10,
              bottom: 10,
            ),
            child: Container(
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: '请输入用户',
                  labelStyle: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.green[400],
                  ),
                ),
              ),
              width: 300,
            )
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 40,
              top: 10,
//              right: 10,
              bottom: 10,
            ),
            child: Container(
              child: MaterialButton(
                onPressed: (){
                  addTo();
                },
                child: Text('添加'),
                color: Color(0xFF419EAD),

              ),
              width: 300,
            ),
          )

        ],
      ),
    );
  }

  void addTo() {
    print(passwordController.text);
    print(idController.text);
    print(userController.text);
    print(nameController.text);

    if(passwordController.text!=""&&idController.text!=""&&userController.text!=""&&nameController.text!=""){
      Fluttertoast.showToast(msg: passwordController.text+"!"+idController.text+"!"+userController.text+"!"+nameController.text);
      String passWord = passwordController.text;
      String appName = idController.text;
      String userName = userController.text;
      String authorName = nameController.text;
      addToDatabase(passWord,appName,userName,authorName);
    }else{
      Fluttertoast.showToast(msg: "请输入所有数据!!!");
    }

  }

  Future<void> addToDatabase(String passWord, String appName, String userName, String authorName, ) async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath,'hyl.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE IF NOT EXISTS PassWord (id INTEGER PRIMARY KEY, appName TEXT, authorName  TEXT, passWord TEXT,userName TEXT);');
        });
    await database.transaction((txn) async {
//      int id1 = await txn.rawInsert(
//          'INSERT INTO PassWord(appName, authorName, userName, passWord) VALUES($appName, $authorName, $userName, $passWord);');
//      print('inserted1: $id1');
      int id = await txn.rawInsert(
          'INSERT INTO PassWord(appName, authorName, userName, passWord) VALUES(?, ?, ?, ?)',
          [appName, authorName, userName, passWord]);
      print('inserted2: $id');
    });
    await database.close();
  }


}