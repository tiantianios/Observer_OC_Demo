//
//  specificObserver.m
//  Observer_OC_Demo
//
//  Created by tianxiuping on 2017/10/1.
//  Copyright © 2017年 TXP. All rights reserved.
//

#import "specificObserver1.h"

@implementation specificObserver1

- (void)update:(Observable *)o msg:(NSObject *)msg{
    
    NSLog(@"具体观察者1收到--%@",msg);
    
}
@end
