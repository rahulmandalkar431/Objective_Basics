//
//  LinkedList.m
//  OrderedList
//
//  Created by BridgeLabz Solutions LLP on 19/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

@implementation OrderList

-(void)readFromFile{
   
   NSString *file= @"/Users/bridgelabz/Documents/Objective_Basics/OrderedList/OrderedList/input";
   
    //NSLog(@"File Path for Linkedlist :%@",file);
    NSError *error;
    NSString *content =[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    linkList=(NSMutableArray*)[content componentsSeparatedByString:@"\n"];
  
}
-(void)Search:(int)number{
    int i,count=0;
    NSString *num=[[NSString alloc]initWithFormat:@"%d",number ];
    for(i=0;i<[linkList count];i++){
        if([linkList objectAtIndex:i]==num)
        {
           // NSLog(@"Element %@ is found at %d .",num,i);
           [self pop:num andPos:i];
            
        }
        else{
            if(count==0){
            [self insert:num andPos:5];
                count++;
            }
        }
    }
    count=0;
}
-(void)insert:(NSString *)num andPos:(int)position{
    NSLog(@"Object :%@ position:%d",num,position);
    int len = (int)[linkList count];
  [linkList insertObject:num atIndex:len-1];
    int i;
    for (i=0; i<(int)[linkList count]; i++) {
        NSLog(@" %@",[linkList objectAtIndex:i]);
    }
 //[linkList sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"intValue" ascending:YES]]];
    //NSLog(@"\nElement is Inserted.");
}
-(void)pop:(NSString *)num andPos:(int)position{
    
    [linkList removeObjectAtIndex:position];
    //NSLog(@"Element %@ is removed from position %d .",num,position);
}
-(void)display{
    int i;
    for (i=0; i<(int)[linkList count]; i++) {
        NSLog(@" %@",[linkList objectAtIndex:i]);
    }
}
-(void)writefile{
    
}
@end
