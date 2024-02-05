import 'package:flutter/material.dart';

class MediaServer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MediaServerState();
  }
}

class _MediaServerState extends State<MediaServer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text("影视服务器", style: TextStyle(fontWeight: FontWeight.w500),),
        actions: [
          PopupMenuButton<int>(
            icon: Icon(Icons.more_horiz),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("显示 - 简洁"), Icon(Icons.list_alt)],
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("排序"), Icon(Icons.sort)],
                ),
              ),
            ],
            onSelected: (value) {
              // 你可以在这里处理用户点击菜单项的逻辑
              if (value == 1) {
                print("用户点击了菜单项 1");
              } else if (value == 2) {
                print("用户点击了菜单项 2");
              }
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("连接到...", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),),
            SizedBox(height: 4,),
            Container(
              // 使用 BoxDecoration 给 Container 添加边框
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              // 你的 ListView
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/emby.png', width: 22, height: 22,),
                        SizedBox(width: 10,),
                        Text(
                          'Emby',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/jellyfin.png', width: 22, height: 22,),
                        SizedBox(width: 10,),
                        Text(
                          'Jellyfin',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/plex.png', width: 22, height: 22,),
                        SizedBox(width: 10,),
                        Text(
                          'Plex',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
