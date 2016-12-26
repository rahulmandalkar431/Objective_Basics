//
//  main.m
//  v
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

//https://github.com/rahulmandalkar431/Objective_Basics/blob/master/myjsonfile.json
///Users/bridgelabz/Documents/Objective_Basics/
#import <Foundation/Foundation.h>
#import "JSON.h"
//#import "/Users/bridgelabz/Documents/Objective_Basics/myjsonfile.json"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        JSON *js=[[JSON alloc]init];
        [js getData];
       int a= [js calculateRice];
       int b= [js calculatePulse];
       int c= [js calculateWheat];
        printf("\n----------------------------------------------");
        printf("\nTotal Inventory Value:%d",a+b+c);
        [js writetojson];
    }
    return 0;
}
