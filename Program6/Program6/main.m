//
//  main.m
//  Program6
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number=0;
        printf("\nEnter number:");
        scanf("%d",&number);
        prime_factor *pf = [[prime_factor alloc]init];
        [pf findFactor:number];
           }
    return 0;
}
