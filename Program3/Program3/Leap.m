//
//  Leap.m
//  Program3
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Leap.h"

@implementation Leap

-(void)getYear:(int)inputyear;
{
    year=inputyear;
    NSLog(@"Entered Year:%d",year);
}
-(void)calculate
{
    int rem1;
    lasttwodigit=year%100;
    NSLog(@"last two digit:%d",lasttwodigit);
    rem1=lasttwodigit%4;
    if(rem1==0 || year%400==0)
    {
        NSLog(@"The year %d is leap year.",year);
    }
    else
    {
        NSLog(@"The year %d is not leap year.",year);
    }
}

@end
