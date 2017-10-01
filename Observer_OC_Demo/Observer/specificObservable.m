//
//  specificObservable.m
//  Observer_OC_Demo
//
//  Created by tianxiuping on 2017/10/1.
//  Copyright © 2017年 TXP. All rights reserved.
//

#import "specificObservable.h"

@interface specificObservable ()

@property (nonatomic) NSString* title;

@end
//具体被观察者
@implementation specificObservable

-(void)setTitle:(NSString*)title{
  
    _title = title;
}

-(void)push{
    [self notifyObservers:self.title];
}

@end
