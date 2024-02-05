import 'package:flutter/material.dart';

class Media extends StatefulWidget{

  @override
  State createState() {
    return _MediaState();
  }
}

class _MediaState extends State<Media> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.perm_media),
            onPressed: () {

            },
          ),
          title: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Row(
                children: <Widget>[
                  Expanded(
                    child:Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.black, width: 0.1)),
                      child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefix: SizedBox(width: 10,),
                          hintText: '搜索',
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              );
            },
          ),
          actions: [
            PopupMenuButton<int>(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("刷新媒体库"), Icon(Icons.refresh)],
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("编辑媒体库"), Icon(Icons.edit)],
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
      ),
    );
  }

}

