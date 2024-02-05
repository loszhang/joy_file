import 'package:flutter/material.dart';

import 'alist_add.dart';

class FilesOrgAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FilesOrgAddState();
  }
}

class _FilesOrgAddState extends State<FilesOrgAdd> {
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
        title: Text("添加/修改文件源", style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(left: 15, top: 10, right: 15),
          child: Column(
            children: [
              _alreadyAdded(),
              SizedBox(height: 15,),
              _localFile(),
              SizedBox(height: 15,),
              _netShare(),
              SizedBox(height: 15,),
              _cloud(),

              SizedBox(height: 45,),
            ],
          ),
        ),
      ),
    );
  }
  Widget _alreadyAdded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("连接到", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),),
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
            ],
          ),
        ),
      ],
    );
  }

  Widget _localFile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("本地文件", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),),
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
                    Image.asset('images/localfile.png', width: 22, height: 22,),
                    SizedBox(width: 10,),
                    Text(
                      '打开本地视频',
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
                    Image.asset('images/文件夹.png', width: 22, height: 22,),
                    SizedBox(width: 10,),
                    Text(
                      '本地目录',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _netShare() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("网络共享", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),),
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
                    Image.asset('images/Windows.png', width: 22, height: 22,),
                    SizedBox(width: 10,),
                    Text(
                      'SMB',
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
                    Image.asset('images/网络.png', width: 24, height: 24,),
                    SizedBox(width: 10,),
                    Text(
                      'WebDAV / AList',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AlistAdd()));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _cloud() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("云盘", style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),),
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
                      '阿里云盘',
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
                      '百度网盘',
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
                      'Dropbox',
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
                      'OneDriver',
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
                      'Google Driver',
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
                      '其他云服务',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
