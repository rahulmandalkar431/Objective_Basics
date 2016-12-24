//
//  main.m
//  InsertionSort
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Insertion.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InsertionSort *ins=[[InsertionSort alloc]init];
        
        int i,num[10];
        printf("\nEnter numbers:\n");
        for(i=0;i<10;i++)
        {
            scanf("%d",&num[i]);
        }
      [ins getNumber:num];
      [ins insertion_sort];

    }
    return 0;
}
