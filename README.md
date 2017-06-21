# 3DTouchAndWidget
同时拥有3DTouch和Widget的功能

3DTouch分两种情况，程序外和程序内；程序外就是桌面上按动程序，出现效果；程序内就是在程序里面按动某个控件实现3DTouch效果

1.做成类似于支付宝（如图）3dtouch和Widget功能并不难
![](/Images/image1.png)

本程序简单实现效果（如图）
![](/Images/image2.png)

2.程序内按某个控件实现3dtouch

言归正传，说一下实现步骤
一：3DTouch外部实现步骤如下：
step1:在info.plist文件加入想要的条目如图：
![](/Images/image3.png)

step2:在AppDelegate中添加如下代码，来分别处理3dtouch的功能
// 处理点击3D touch 方法的功能实现
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    if ([shortcutItem.type isEqualToString:@"ShortCutOpen"]) {
        NSLog(@"打开了软件");
    }
    if ([shortcutItem.type isEqualToString:@"ShortCutShare"]) {
        NSLog(@"分享");
    }
}


二：3DTouch内部实现步骤如下：
step1:在想要加3DTouch的页面遵守协议UIViewControllerPreviewingDelegate

step2:实现代理方法即可



三：增加Widget功能
step1:创建Today Extension
![](/Images/image4.png)
![](/Images/image5.png)

step2:和Today Extension关联(注意：此管理需要开发者自己配置证书，保证不能出错才可以，否则无法运行，必须使用xcode8.0以上版本)
![](/Images/image6.png)
![](/Images/image7.png)

运行程序，大功告成！
