//
//  main.m
//  InventoryJSON
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"
#import "SBJson5.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *r=nil;
        NSString *strurl=@"/Users/bridgelabz/Documents/Objective_Basics/InventoryJSON/InventoryJSON/mydata.json";
        
        NSString *content=[NSString stringWithContentsOfURL:[NSURL URLWithString:strurl]encoding:NSUTF8StringEncoding error:&r];
  
        NSArray *array=[content proxyForJson];
        int i;
        NSMutableArray *marray=[[NSMutableArray alloc]init];
        
        for (i=0; i<array.count; i++) {
            NSDictionary *obj=array[i];
           Inventory *inv=[[Inventory alloc]init];
            inv.name=obj[@"name"];
            inv.weight=obj[@"weight"];
            inv.price=obj[@"price"];
            [marray addObject:inv];
            NSLog(@"Name:%@",inv.name);
            NSLog(@"Name:%d",inv.weight);
            NSLog(@"Name:%d",inv.price);
            
        }
        
 
       
    }
    return 0;
}
