# 想跑GSI可无奈于没有机子？Github云编译欢迎你！手机也可以编译啦！
***
Hello eyeryone，这里是5月18日才开学的巨龙Jvlong。  
***
本教程使用Markdown语法编写，复制到支持Markdown的文本编辑器里阅读体验更佳。也可以在Github里阅读。
***
### 前言：
疫情期间在线上课没事干，正好在折腾Openwrt云编译，就去学习了一下Github Actions，想做一个试试手，于是就凑时间（mo yu）写了一个Github Actions自动化跑ErfanGSI的脚本。
项目地址：https://github.com/together08/actions_build_erfangsis
***
### GitHub Actions简单介绍：
Github Actions是Github推出的一个新的功能，可以为我们的项目自动化地构建工作流，例如代码检查，自动化打包，测试，发布版本等等。由于基于Docker，所以用完释放（不存储任何东西）。  
这是一个独立的Docker容器，可以运行Ubuntu，Winserver等操作系统（提供了完整的环境）。提供了2核CPU，7G RAM，14G硬盘的配置。  
也就是说它只要是一台电脑能做到的，它基本都能做到。
***
### GSI是什么？
Generic System Image，简称GSI。  
在安卓8开始添加的Project Treble，使基本所有能升级到安卓8的手机都能有GSI刷，也就是说就算你的厂商没有开放解锁BL，你也可以通过特殊渠道解锁后刷GSI，玩第三方ROM（暗指某菊花厂）。  
目前主要有phh的GSI（从源码构建）和ErfanGSI（从ROM构建），本脚本就是基于后者开发的。
***
# 准备好了吗？让我们开始吧！

>第一步 Fork仓库


* 访问GitHub，注册/登陆账号。
* 访问上面的项目地址
* 点击右上角Fork，等待Fork完毕
* 进入你的账号，进入这个仓库

>第二步 修改Actions流程文件并开始构建

* 选择第一个 .github/workflows，点击进入
* 点击后缀为yml的文件
* 点击右上角铅笔按钮，进入修改模式
* 编辑env下的ROM_URL变量，改为你要做的GSI的底包的直链
* 编辑env下的ROM_NAME变量，改为你要做的GSI的底包的名称，在Readme.md里已经具体列出
* 接着commit
* 最后右上角Fork按钮左边的Star小星星按钮，按下即可开始跑GSI了

>第三步 下载GSI

* 点击进入菜单栏上的Actions
* 进入这个构建Action
* 选择左边build
* 按箭头打开Upload GSI的菜单
* 下载地址在Download Link后面，复制打开
* 接着下载就可以了（日本的服务器，需要特殊操作才能下载  


### 好了，下载就完事了！
***
>好啦，教程到这里就结束了。感谢看到这里的你～


### 作者：酷安@巨龙Jvlong，Github：together08
