//
//  main.m
//  BalanceParenthesis
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Balance.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i;
        int cnt1=0;
        int cnt2=0;
        char str1[20];
  
        printf("\nEnter Expression:");
        scanf("%s",str1);
        NSString *string1 = [NSString stringWithFormat:@"%s",str1];
        NSMutableArray *stack =[[NSMutableArray alloc]initWithCapacity:[string1 length]];
        for(i=0;i<[string1 length];i++)
        {
            NSString *char1 = [NSString stringWithFormat:@"%c",[string1 characterAtIndex:i]];
            if([char1 isEqualTo:@"("])
            {
                [stack addObject:char1];
                cnt1++;
            }
            else if([char1 isEqualTo:@")"])
            {
                if([stack count]==0)
                {
                    NSLog(@"Stack is too Empty...");
                }
                else
                {
                    [stack removeLastObject];
                }
                cnt2++;
            }
            
        }
        
        Balance *bl=[[Balance alloc]init];
        
        [bl show:stack];
        if(cnt1==cnt2)
        {
            NSLog(@"Expression is balanced");
        }
        else
        {
            NSLog(@"Expression is not balanced");
        }
        
           }
    return 0;
}
