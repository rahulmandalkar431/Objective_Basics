//
//  Hash.h
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import<Foundation/Foundation.h>

@interface Hash : NSObject
{   int _current_item;
    int _key;
    Hash *_next;
    int size;
}
@property (readwrite)int key;
@property (readwrite)int currentValue;
@property (retain)Hash *next;
-(void)setsize:(int)size;
-(int)hashcode:(int)key;
-(void)addItem:(int)key andValue:(int)item andHash:(int[])newhash;
-(void)insert:(int)insert_item;
-(void)print;

//-(void)
@end
