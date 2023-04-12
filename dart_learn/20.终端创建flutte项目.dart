/**
 * 终端创建项目和IDE创建项目的区别就是: 终端不会给你创建一堆没用的文件.
 * 1. cd 到指定目录
 * 2. flutter create 项目名称
 * 3. 项目名称不能包含特殊字符、不能有大写、更不能采用驼峰命名
 * 4. 项目名称当由多个单词组成时, 可采用下划线(_)拼接
 * 5. 创建flutter_learn项目
 */

/**
 * flutter 项目文件说明
 * 1. .dart_tool: 记录某些东西(三方库等)的基本信息, 不需要手动配置
 * 2. .idea: 记录项目配置信息的文件, 不需要手动配置
 * 3. lib: 存放所有flutter的源码, 整个flutter项目的入口就是main.dart
 * 4. .metadata: 记录flutter版本信息的, 不需要手动编辑
 * 5. pubspec.yaml: 基本信息和引用说明, 需要手动编辑
 */

/**
 * 调试工具栏说明
 * 1. 闪电标志(hot reload) : 热重载   快捷键: control+F5
 * 2. 刷新标志(hot restart) : 热重启  快捷键: command+shift+F5
 */

/**
 * 运行一个flutter 项目, 有三种:
 * 1. 冷启动, 从0开始, 时间较长, 框架啥的都从零开始加载 ;
 * 2. 热重载, 主要执行build的 
      * 例如: 点击flutter demo, 屏幕中间计数器数字累加, 修改主题颜色, hot reload => 主题颜色会变, 但是计数器数字不变.
 * 3. 热重启, 重新运行整个App
      * 例如: 点击flutter demo, 屏幕中间计数器数字累加, 修改主题颜色, hot restart => 主题颜色会变, 但是计数器数字重置.
 */

/**
 * flutter 中理解万物都是widget
 * 当需要传入一个widget类型时, 传什么都可以, 因为万物都是widget
 * widget 释义: 
      * 百度: (不知名的)小器物，小装置，小玩意儿
      * 谷歌: 小部件
 */

/**
 * Material
 * 是一套谷歌的设计风格, 也可说是代码规范, 比如: 文字, 颜色, 排版, 动画, 填充等
 * flutter 高度集成了Material风格的widget
 */

/**
 * VSCode 好用的快捷键
 * 
 * command + j  快速展开/关闭底部控制台
 * command + shift + p 全局搜索
 * shift + option + f 快速格式化
 */