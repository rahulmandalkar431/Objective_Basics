//
//  First.m
//  First
//
//  Created by BridgeLabz Solutions LLP on 16/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import "First.h"

@implementation First
-(void)getNumber:(int[])number{
    int i;
    for(i=0;i<10;i++)
    {
        data[i]=number[i];
    }
    printf("\nGiven Array:\n");
    [self display:data];
}
-(void)display:(int[])number{
    int i;
    
    for(i=0;i<10;i++)
    {
        printf("%d \t",number[i]);
    }
}
-(void)buble_sort{
    int temp,i,j,n=10;
    printf("\nSorted Data :\n");
    for(i=0;i<n-1;i++)
    {
        for(j=0;j<n-i-1;j++){
            if(data[j]>data[j+1])
            {
                temp=data[j];
                data[j]=data[j+1];
                data[j+1]=temp;
                
            }
        }
        
    }
    [self display:data];
}

@end
