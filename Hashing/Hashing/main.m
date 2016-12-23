//
//  main.m
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hash.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Hash *hash=[[Hash alloc]init];
        int item,size,key;
        int i;
        printf("\nEnter Hashtable size:");
        scanf("%d",&size);
        int hashtable[size];
        for(i=0;i<size;i++)
        {
            hashtable[i]=false;
        }
      //  [hash setHashTable:size];
        printf("\nEnter Key:");
        scanf("%d",&key);
        printf("\nEnter Item:");
        scanf("%d",&item);
        [hash addItem:key andValue:item andHash:hashtable];
    }
    return 0;
}
