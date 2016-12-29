//
//  New.h
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 25/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Person{
    int pid;
    char name[20];
    
};

struct Record{
    struct Person *data;
    struct Record *next;
};

@interface HTable : NSObject

-(int)getHash:(int)key;
-(void)insert:(struct Person *)precord and:(struct Record *)hashtable;
-(int)Search:(int)key and:(struct Record *)hashtable;
-(void)display:(struct Record *)hashtable;
-(void)deleteRecord:(int)key and:(struct Record *)hashtable;
@end
