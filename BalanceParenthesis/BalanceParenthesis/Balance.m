//
//  Balance.m
//  BalanceParenthesis
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Balance.h"

@implementation Balance
-(void)show:(NSMutableArray *)st{
    NSString *string = [NSString stringWithFormat:@"%@",st];
    int i;
    /*for(NSMutableArray *stack in st)
     {
     NSLog(@"%@",stack);
     }
     */
    int len=[st count]-1;
    for(i=len;i>=0;i--)
    {
        printf("|  %c  | \n",[string characterAtIndex:i]);
        
    }
    printf("-------");
    
}

@end
