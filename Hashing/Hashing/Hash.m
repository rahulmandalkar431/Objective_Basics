//
//  Hash.m
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hash.h"

@implementation Hash
@synthesize currentValue=_current_item;
@synthesize next=_next;
-(id)init{
    self=[super init];
    if(self){
        
        _current_item=false;
        _next=NULL;
    }
    return self;
}

int hashkey;
-(void)setsize:(int)size1{
    size=size1;
}
-(int)hashcode:(int)key{
    return (key%size);
}

-(void)addItem:(int)key andValue:(int)item andHash:(int[])newhash{
    int i;
    hashkey=[self hashcode:key];
    for(i=0;i<size;i++){
        if (newhash[hashkey]==false) {
            newhash[hashkey]=item;
        }
        else if(newhash[hashkey]!=false)
        {
        
        
        }
            
    }
}

-(void)insert:(int)insert_item{
    Hash *nextnode=self.next;
    Hash *newnode;
    if(self.currentValue==0){
        self.currentValue=insert_item;
        return;
    }
    //-----------------
    if(nextnode==NULL)
    {
        newnode=[[Hash alloc]init];
        if(newnode)
        {
            newnode.currentValue=insert_item;
            newnode.next=nextnode;
            self.next=newnode;
        }
        return;
    }
    else
    {
        if (insert_item>self.currentValue && insert_item<nextnode.currentValue)
        {
            newnode=[[Hash alloc]init];
            if(newnode)
            {
                newnode.currentValue=insert_item;
                newnode.next=nextnode;
                self.next=newnode;
            }
            return;
        }
        else
        {
            [nextnode insert:insert_item];
        }
        
    }
    
}
-(void)print
{
    Hash *nextnode=self.next;
    
    
    printf("%d \t",self.currentValue);
    if(nextnode)
    {
        [nextnode print];
    }
    
}

@end
