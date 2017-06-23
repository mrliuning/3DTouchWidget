//
//  ViewController.m
//  3DTocuhAndWidget
//
//  Created by 许佳奇 on 17/6/21.
//  Copyright © 2017年 liuning.cn. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if(self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
        [self registerForPreviewingWithDelegate:self sourceView:self.view];
    }else{
        NSLog(@"此设备不支持3DTouch");
    }
}
#pragma mark - Previewing delegate

- (UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    
    SecondViewController *detailVC = [SecondViewController new];
    detailVC.preferredContentSize = CGSizeMake(0.0, 320.0);
    detailVC.view.backgroundColor = [UIColor redColor];
    previewingContext.sourceRect = CGRectMake(50, 100, 100, 80);
    
    return detailVC;
}

- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    [self showViewController:viewControllerToCommit sender:self];
}


@end
