/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-13 13:14:03
 * @FilePath: /phoenix_toast/example/lib/toast_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class ToastExample extends StatefulWidget {
  @override
  _ToastExampleState createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: 'BrnToast示例',
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  PhoenixToast.show(
                    "普通长Toast",
                    context,
                    duration: PhoenixDuration.long,
                    gravity: ToastGravity.center,
                  );
                },
                child: const Text("普通长Toast"),
              ),
              ElevatedButton(
                onPressed: () {
                  PhoenixToast.show(
                    "失败图标Toast",
                    context,
                    preIcon: Image.asset(
                      "assets/image/icon_toast_fail.png",
                      width: 24,
                      height: 24,
                    ),
                    duration: PhoenixDuration.short,
                  );
                },
                child: const Text("失败图标Toast"),
              ),
              ElevatedButton(
                onPressed: () {
                  PhoenixToast.show(
                    "成功图标Toast",
                    context,
                    preIcon: Image.asset(
                      "assets/image/icon_toast_success.png",
                      width: 24,
                      height: 24,
                    ),
                    duration: PhoenixDuration.short,
                  );
                },
                child: const Text("成功图标Toast"),
              ),
              ElevatedButton(
                onPressed: () {
                  PhoenixToast.show("自定义位置Toast", context,
                      duration: PhoenixDuration.short,
                      verticalOffset: 100,
                      gravity: ToastGravity.bottom);
                },
                child: const Text("自定义位置Toast"),
              ),
              ElevatedButton(
                onPressed: () {
                  PhoenixToast.show(
                    "自定义时长Toast",
                    context,
                    duration: const Duration(seconds: 5),
                  );
                },
                child: const Text("自定义时长Toast(5s)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
