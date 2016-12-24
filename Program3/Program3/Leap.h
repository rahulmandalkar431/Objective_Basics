//
//  Leap.h
//  Program3
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
@interface Leap:NSObject
{
    int year;
    int lasttwodigit;
}
-(void)getYear:(int)inputyear;
-(void)calculate;

@end
