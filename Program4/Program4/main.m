//
//  main.m
//  Program4
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Power.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int power;
        printf("\nEnter power:");
        scanf("%d",&power);
        if(power>=31){
            NSLog(@"Please enter power rang within 0 to < 31");
            
        }
        else
        {
            Power *pw =[[Power alloc]init];
            
            [pw getPower:power];
            NSLog(@"The %d nth power of 2 is :%d",power,[pw calculate]);
            
        }

        
           }
    return 0;
}
