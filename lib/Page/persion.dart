import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class PersionPage extends StatelessWidget{
  String username = '仙女璐笨笨博';
  String touxiangUrl = 'assets/touxiang/hugou.jpg';

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                height: 240,
                width: 414,
                decoration: new BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF3CC2E9), Color(0xFF817DFB)]
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 56.2,
                        left: 308.2,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 19.5,
                            width: 19.5,
                            child: new IconButton(
                              onPressed: (){
//                                Fluttertoast.showToast(msg: '扫码功能');
                              },
                              iconSize: 19.5,
                              padding: EdgeInsets.all(0),
                              icon: Icon(
                                Icons.photo_camera,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18.4,
                              right: 21.2,
                            ),
                            child: Container(
                              height: 20.2,
                              width: 21.7,
                              child: new IconButton(
                                onPressed: (){
//                                  Fluttertoast.showToast(msg: '设置功能');
                                },
                                iconSize: 20.2,
                                padding: EdgeInsets.all(0),
                                icon: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 18,
                              left: 20,
                              right: 20,
                              bottom: 80
                          ),
                          child: Container(
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,

                                image: DecorationImage(
//                                  image: NetworkImage('https://tse4-mm.cn.bing.net/th/id/OIP.0F1eOEMKmFz7DxIa-s884gHaHa?w=197&h=190&c=7&o=5&pid=1.7'),
                                  image: AssetImage(touxiangUrl),
                                  fit: BoxFit.cover,
                                ),
                            ),
                            height: 64,
                            width: 64,
                          ),
                        ),

                        Expanded(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 11.6,
                                    left: 0,
                                    bottom: 15,
                                  ),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 24,
                                    child: Text(
                                      username,
                                      style: TextStyle(
                                          fontSize: 20,
                                          height: 1.2,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 0,
                                    bottom: 98,
                                  ),
                                  child: Container(
                                      height: 15,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '设计师',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 14,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                          Container(height: 20, child: VerticalDivider(color: Color(0xFFD3D7E0))),
                                          Text(
                                            '入行五年',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 14,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                          Container(height: 20, child: VerticalDivider(color: Color(0xFFD3D7E0))),
                                          Text(
                                            '杭州',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 14,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                )
                              ],
                            )
                        ),

                        Container(
                          width: 46,
                          height: 12,
                          child: IconButton(
                            iconSize: 12,
                            padding: EdgeInsets.all(0),
                            onPressed: (){
//                              Fluttertoast.showToast(msg: '详细页面');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ),



                      ],
                    ),

                  ],
                )

            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 195,
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: 0,
                ),
                width: 354,
                height: 123,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xFFFFFFFF)
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 75,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    '24',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 18,
                                      color: Color(0xFF383A3D),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '我的任务',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 12,
                                      color: Color(0xFF83878F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 75,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    '18',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 18,
                                      color: Color(0xFF383A3D),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '我完成的',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 12,
                                      color: Color(0xFF83878F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 75,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    '17',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 18,
                                      color: Color(0xFF383A3D),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '待提交',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 12,
                                      color: Color(0xFF83878F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 0.5,indent: 0.0,color: Color(0x1A000000)),
                    Padding(
                      padding: EdgeInsets.only(
                        top:13,
                        left: 30,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 20,
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xFF383A3D),
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 5,
                            ),
                            child: Container(
                              height: 18,
                              child: Text(
                                '个接单类型',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF383A3D),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 190,
                            ),
                            child: Container(
                              height: 18,
                              child: Text(
                                '管理',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFA9ADB8),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4,
                            ),
                            child: Container(
                              height: 18,
                              width: 10,
                              child: IconButton(
                                iconSize: 12,
                                padding: EdgeInsets.all(0),
                                onPressed: (){
//                                  Fluttertoast.showToast(msg: '管理页面');
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFA9ADB8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top:25,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 104,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top:5,
                        ),
                        child: Icon(
                          Icons.home,
                          color: Color(0xFF0095FF),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:15,
                        ),
                        child: Text(
                          '我的资料',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF383A3D),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 104,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top:5,
                        ),
                        child: Icon(
                          Icons.home,
                          color: Color(0xFF0095FF),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:15,
                        ),
                        child: Text(
                          '我的主页',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF383A3D),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 104,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top:5,
                        ),
                        child: Icon(
                          Icons.home,
                          color: Color(0xFF0095FF),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:15,
                        ),
                        child: Text(
                          '我的资料',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF383A3D),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 104,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top:5,
                        ),
                        child: Icon(
                          Icons.home,
                          color: Color(0xFF0095FF),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:15,
                        ),
                        child: Text(
                          '我的旅程 ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF383A3D),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Row(
          children: <Widget>[
            Expanded(
              child: Icon(
                Icons.location_city,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                '我的权益',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3033),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 20,
                child: IconButton(
                  iconSize: 12,
                  padding: EdgeInsets.all(0),
                  onPressed: (){
//                    Fluttertoast.showToast(msg: '详细页面');
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFA9ADB8),
                  ),
                ),
              ),
            ),

          ],
        ),

        Row(
          children: <Widget>[
            Expanded(
              child: Icon(
                Icons.location_city,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                '我的客服',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3033),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 20,
                child: IconButton(
                  iconSize: 12,
                  padding: EdgeInsets.all(0),
                  onPressed: (){
//                    Fluttertoast.showToast(msg: '详细页面');
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFA9ADB8),
                  ),
                ),
              ),
            ),

          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Icon(
                Icons.location_city,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                '帮助与反馈',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3033),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 20,
                child: IconButton(
                  iconSize: 12,
                  padding: EdgeInsets.all(0),
                  onPressed: (){
//                    Fluttertoast.showToast(msg: '详细页面');
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFA9ADB8),
                  ),
                ),
              ),
            ),

          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Icon(
                Icons.location_city,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                '关于',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3033),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 20,
                child: IconButton(
                  iconSize: 12,
                  padding: EdgeInsets.all(0),
                  onPressed: (){
//                    Fluttertoast.showToast(msg: '详细页面');
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFA9ADB8),
                  ),
                ),
              ),
            ),

          ],
        ),

        Padding(
          padding: EdgeInsets.only(
            top:15,
          ),
          child: Container(
            height: 17,
            child: Text(
              '客服电话 xxxx-xxx-xxx    工作时间 09:00-18:00',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFFADB0B8),
              ),
            ),
          ),
        ),

      ],
    );
  }
}