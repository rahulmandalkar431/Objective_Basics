//
//  Binary.m
//  BinarySearch
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import "Binary.h"
#import <Foundation/Foundation.h>
#define n 10
@implementation BinarySearch

-(void)getArray:(int[])number{
    int i;
    for(i=0;i<n;i++)
    {
        data[i]=number[i];
    }
    printf("\nGiven Array:\n");
    [self display:data];
}
-(void)display:(int[])number{
    int i;
    
    for(i=0;i<n;i++)
    {
        printf("%d \t",number[i]);
    }
}
-(void)sort{
    int temp,i,j;
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
-(int)search:(int)item
{
    location=-1;
    int low=0,high=n-1;
    int mid;
    while(low<=high)
    {
        mid=low+(high-low)/2;
        if(data[mid]>item)
        {
            high=mid-1;
            mid=low+(high-low)/2;
        }
        else if(data[mid]<item){
            low=mid+1;
            mid=low+(high-low)/2;
        
        }
        else if(data[mid]==item){
            location=mid;
            return location;
        
        }
            
            
    }
    
    return location;
}
-(void)result:(int)index{
    printf("\nThe Element %d is found at index:%d",data[index],index+1);
}
@end
