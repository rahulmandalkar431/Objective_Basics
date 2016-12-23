//
//  main.m
//  OrderedList
//
//  Created by BridgeLabz Solutions LLP on 19/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       int num;
    OrderList *ol =[[OrderList alloc]init];
        [ol readFromFile];
        NSLog(@"List Before:");
        [ol display];
        printf("\n Enter Number:\n");
        scanf("%d",&num);
       
        
        
        [ol Search:num];
        
      // NSLog(@"List After :");
       // [ol display];
    }
    return 0;
}
