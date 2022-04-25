# desktop
Flutter Android 返回到桌面

1.引用

~~~
dependencies:
  desktop: 
    git:
      url: https://github.com/DickHoo/desktop.git
~~~

使用

①：Widget使用

~~~dart
MainWidget(body:Widget,
            fn: () => { Fluttertoast.showToast(msg: "再按一次退出软件")}
          )
~~~

②：代码使用

~~~dart
Desktop.goBackDesktop
~~~



