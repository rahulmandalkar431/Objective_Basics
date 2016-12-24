//
//  main.m
//  Program3
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Leap.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year=0000;
        printf("\nEnter Year:");
        scanf("%d",&year);
        Leap *lp =[[Leap alloc]init];
        [lp getYear:year];
        [lp calculate];
    }
    return 0;
}
