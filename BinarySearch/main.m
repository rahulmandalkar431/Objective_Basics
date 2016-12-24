//
//  main.m
//  BinarySearch
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Binary.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BinarySearch *bs = [[BinarySearch alloc]init];
        int i,num[10];
        int element;
        printf("\nEnter array elements:\n");
        for(i=0;i<10;i++)
        {
            scanf("%d",&num[i]);
        }
        [bs getArray:num];
        [bs sort];
        printf("\nEnter Search Element:\n");
        scanf("%d",&element);
       int index= [bs search:element];
        [bs result:index];

        
    }
    return 0;
}
