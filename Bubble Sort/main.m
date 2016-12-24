//
//  main.m
//  First
//
//  Created by BridgeLabz Solutions LLP on 16/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "First.h"
int main() {
    @autoreleasepool {
        First *obj =[[First alloc]init];
        int i,num[10];
        for(i=0;i<10;i++)
        {
            scanf("%d",&num[i]);
        }
        [obj getNumber:num];
        [obj buble_sort];
        
        
    }
    return 0;
}
