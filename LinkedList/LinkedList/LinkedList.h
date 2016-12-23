//
//  LinkedList.h
//  LinkedList
//
//  Created by BridgeLabz Solutions LLP on 20/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import<Foundation/Foundation.h>

@interface LList : NSObject
{
    NSInteger _currentValue;
    LList * _next;
}

- (void) insert: (NSInteger) valueToInsert;
- (void) printValue;
- (LList *) reverseLinkedList;

@property (readwrite) NSInteger currentValue;
@property (retain) LList * next;

@end
