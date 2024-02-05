import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
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
        title: Text('设置'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(left: 15, top: 10, right: 15),
          child: Column(
            children: [
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
                child: settingItem(),
              ),
              Container(height: 60,)
            ],
          ),
        ),
      ),
    );
  }

  Widget settingItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.grid_view),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '通用',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.reduce_capacity),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '资源',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.file_download_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '下载',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.cloud_sync_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '同步',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '播放',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.perm_media_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '播放器界面',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.subtitles_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '字幕',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.image_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '截图和录屏',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.security),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '隐私与安全',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.warning_amber),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '关于',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
            ],
          ),
        )
      ],
    );
  }
}
