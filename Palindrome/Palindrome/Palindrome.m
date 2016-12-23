//
//  Palindrome.m
//  Palindrome
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Palindrome.h"
#import <string.h>
@implementation Palind

-(void)getString:(char [])string1{
    int i,j=0;
    len=(int)strlen(string1);
    for(i=len-1;i>=0;i--)
    {
        string2[j]=string1[i];
        j++;
    }
       
    
}
-(void)result:(char[])string3
{
    
        if(strcmp(string2,string3)==0)
        {
            printf("\nYes");
        }
        else
        {
            printf("\nNo");
        }
    
}

@end
