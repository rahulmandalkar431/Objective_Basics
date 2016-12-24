//
//  Power.m
//  Program4
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Power.h"

@implementation Power

-(void)getPower:(int)powerrang;
{
    prang=powerrang;
}
-(int)calculate
{  int i;
    int num=1;
    for(i=0;i<prang;i++)
    {
        num*=2;
    }
    return num;
}

@end
