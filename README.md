# sms_reader_app

A new Flutter project.

## 组件说明

Android 里面所有控件都是 View,而这里所有控件都是 Widget，只不过 View 和 Widget 有一些不同，View 有自己的生命周期，可以通过 invalidate 方法来进行重绘，也可以持有 View 做些 View 相关的操作，而 Widget 不同，它就是一个申明式对象，通过多个 Widget 来构建成一个 Widget 树，它的状态不可变，一旦状态改变，生命周期即结束了，所以它比 View 更轻量。

程序里面的 MyApp、MaterialApp、Scaffold、AppBar、Center、Text 都是 Widget。
继续跟着这些 Widget 的源码会发现，她们又分为 StatelessWidget、StatefulWidget、RenderObjectWidget。

比如 MyApp,Text 是 StatelessWidget，MaterialApp,Scaffold,AppBar 是 StatefulWidget，Center 是 RenderObjectWidget

## Flutter 常用命令

- `flutter create <project_name>`: 创建新的Flutter项目
- `flutter run`: 运行应用程序
- `flutter pub get`: 获取项目依赖
- `flutter build`: 构建应用程序
- `flutter doctor`: 检查开发环境配置
- `flutter clean`: 清理构建文件
- `flutter upgrade`: 升级Flutter SDK

## Flutter 常用方法

### 状态管理
- Provider: 简单易用的状态管理方案
- Riverpod: Provider的改进版本
- Bloc: 基于事件驱动的状态管理

### 路由导航
- Navigator.push(): 跳转到新页面
- Navigator.pop(): 返回上一页
- 命名路由: 通过路由表管理页面跳转

### 网络请求
- http包: 基本的HTTP请求
- dio包: 功能更强大的HTTP客户端
- Retrofit: 基于Dio的REST客户端生成器

### 本地存储
- SharedPreferences: 存储简单键值对
- sqflite: SQLite数据库操作
- Hive: 轻量级NoSQL数据库
