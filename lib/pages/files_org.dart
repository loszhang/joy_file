import 'package:flutter/material.dart';

import 'files_org_add.dart';

class FilesOrg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FilesOrgState();
  }

}

class _FilesOrgState extends State<FilesOrg> {

  // 将目录进行硬编码，可以根据实际情况进行修改
  final List<Map> directories = [
    {"name": "目录 1", "icon": Icons.folder},
    {"name": "目录 2", "icon": Icons.folder},
    {"name": "目录 3", "icon": Icons.folder},
    // 添加更多的目录
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('目录'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.question_mark),  // 这里可以替换成你需要的icon
              onPressed: () {},
            ),
          ),
        ),
          actions: <Widget>[
            PopupMenuButton<int>(
              icon: Icon(Icons.more_horiz),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("添加/修改文件源"),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("编辑"),
                      Icon(Icons.edit)
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  height: 10,
                  padding: EdgeInsets.zero,
                  mouseCursor: null,
                  child: Container(
                    color: Colors.grey[300],
                    height: 10,
                    width: double.infinity,
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("图标"),
                      Icon(Icons.grid_view)
                    ],
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("列表"),
                      Icon(Icons.list)
                    ],
                  ),
                ),
              ],
              onSelected: (value) {
                // 你可以在这里处理用户点击菜单项的逻辑
                if (value == 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FilesOrgAdd()));
                } else if (value == 2) {
                  print("用户点击了菜单项 2");
                }
              },
            ),
          ],
      ),
      body: Container(
        color: Colors.white,
        child: GridView.builder(
          itemCount: directories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 该值控制一行展示几列
            crossAxisSpacing: 10.0,  // 控制列间距
            mainAxisSpacing: 10.0,  // 控制行间距
          ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(directories[index]["icon"], size: 50.0),  // 目录图标
                  SizedBox(height: 10.0),  // 用于图标与名称之间的间距
                  Text(directories[index]["name"], style: TextStyle(fontSize: 18.0)),  // 目录名称
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}