import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:joy_file/pages/files_org.dart';
import 'package:joy_file/pages/media.dart';
import 'package:joy_file/pages/media_server.dart';
import 'package:joy_file/pages/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Media(),
    FilesOrg(),
    MediaServer(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    if (!mounted) return;

    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white70,
        color: Colors.black,
        activeColor: Colors.green[300],
        style: TabStyle.react,
        items: <TabItem>[
          TabItem(
            icon: Icon(Icons.perm_media_outlined, color: _selectedIndex == 0? Colors.green[300] : Colors.black,),
            title: '媒体库',
          ),
          TabItem(
            icon: Icon(Icons.file_copy_sharp, color: _selectedIndex == 1? Colors.green[300] : Colors.black,),
            title: '文件源',
          ),
          TabItem(
            icon: Icon(Icons.computer, color: _selectedIndex == 2? Colors.green[300] : Colors.black,),
            title: '影视服务器',
          ),
          TabItem(
            icon: Icon(Icons.settings, color: _selectedIndex == 3? Colors.green[300] : Colors.black,),
            title: '设置',
          ),
        ],
          onTap: (int i) => _onItemTapped(i),
      ),
    );
  }
}