//
//  ViewController.m
//  Observer_OC_Demo
//
//  Created by tianxiuping on 2017/10/1.
//  Copyright © 2017年 TXP. All rights reserved.
//

#import "ViewController.h"
#import "specificObserver1.h"
#import "specificObserver2.h"
#import "Observable.h"
#import "specificObservable.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self demo1];
    [self demo2];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)demo1{//抽象的被观察者测试
    
    Observable  *obs = [[Observable alloc]init];
    id<Observer>specific1 = [[specificObserver1 alloc]init];
    id<Observer>specific2 = [[specificObserver2 alloc]init];
    [obs addObserver:specific1];
    [obs addObserver:specific2];
    [obs notifyObservers:@"测试发送消息"];
}

- (void)demo2{//具体的被观察者测试
    
    specificObservable  *obs = [[specificObservable alloc]init];
    id<Observer>specific1 = [[specificObserver1 alloc]init];
    id<Observer>specific2 = [[specificObserver2 alloc]init];
    [obs addObserver:specific1];
    [obs addObserver:specific2];
    [obs setTitle:@"我要推送的消息"];
    [obs push];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
