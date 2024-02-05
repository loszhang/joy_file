import 'package:flutter/material.dart';

class AlistAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlistAddState();
  }
}

class _AlistAddState extends State<AlistAdd> {
  bool _obscureText = true; // 初始状态为隐藏密码
  String _chosenValue = 'HTTP'; // 初始选择值
  TextEditingController nameController = TextEditingController();
  TextEditingController serverIPController = TextEditingController();
  TextEditingController portController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController pathController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = '我的WebDAV';
    portController.text = '80';
  }

  // 切换显示/隐藏密码
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
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
          centerTitle: true,
          title: Text('添加WebDAV / Alist'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 71,
                      child: Text('名称'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                        controller: nameController,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('协议'),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // 当点击整个TextField时触发
                          // 这段代码的意思是点击TextField后，弹出一个AlertDialog用于选择。
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('HTTP'),
                                      onTap: () {
                                        setState(() => _chosenValue = 'HTTP');
                                        Navigator.of(context)
                                            .pop(); // 关闭AlertDialog
                                      },
                                    ),
                                    ListTile(
                                      title: Text('HTTPS'),
                                      onTap: () {
                                        setState(() => _chosenValue = 'HTTPS');
                                        Navigator.of(context)
                                            .pop(); // 关闭AlertDialog
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: AbsorbPointer(
                          child: TextField(
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            controller:
                                TextEditingController(text: _chosenValue),
                            // 使用控制器显示当前的选择值
                            decoration: InputDecoration(
                              hintText: "点击选择 HTTP 或 HTTPS",
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('服务器地址'),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '必填(127.0.0.1/sample.com)',
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                        controller: serverIPController,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 71,
                      child: Text('端口号'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                        controller: portController,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 71,
                      child: Text('用户名'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '选填',
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                        controller: usernameController,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 71,
                      child: Text('密码'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        obscureText: _obscureText, // 使用 _obscureText 控制是否显示密码
                        decoration: InputDecoration(
                          hintText: '选填',
                            fillColor: Colors.grey[200],
                            filled: true,
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons
                                      .visibility_off), // 根据 _obscureText 确定显示哪个图标
                              onPressed: _toggleObscureText, // 点击切换显示/隐藏密码
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                        controller: passwordController,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 71,
                      child: Text('路径'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '选填(/dav)',
                            fillColor: Colors.grey[200],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                        controller: pathController,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // 设定按钮的背景颜色
                    ),
                    onPressed: () {
                      // Handle press action
                    },
                    child: Text(
                      '添加',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
