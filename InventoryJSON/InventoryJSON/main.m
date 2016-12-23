//
//  main.m
//  InventoryJSON
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //    inventory *inv=[[inventory alloc]init];
        NSData *data=[[NSData alloc]init];
        NSError *error;
        NSString *string_url=@"/Users/bridgelabz/Documents/Objective_Basics/InventoryJSON/InventoryJSON/mydata.json";
        data=[NSData dataWithContentsOfFile:string_url options:NSDataReadingMappedIfSafe error:&error];
          //NSURL *url=[NSURL URLWithString:string_url];
        //NSString *string2=[NSString stringWithContentsOfFile:string_url encoding:NSUTF8StringEncoding error:&error];
        //data=[string2 dataUsingEncoding:NSUTF8StringEncoding];
      //  data = [data subdataWithRange:NSMakeRange(0, [data length] - 1)];
        //NSLog(@"%@",data);
       //NSData *data1=[string_url  dataUsingEncoding:NSUTF8StringEncoding];
        NSMutableArray *jsondata;
        jsondata=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
      
            NSLog(@"%@",jsondata);
       
      //  NSMutableArray *mu=[[NSMutableArray alloc]init];
      //  mu=jsondata;
        
    }
    return 0;
}
