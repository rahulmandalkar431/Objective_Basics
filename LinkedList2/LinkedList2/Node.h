//
//  Node.h
//  LinkedList2
//
//  Created by BridgeLabz Solutions LLP on 20/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Node :NSObject
{
    NSInteger _currentVal;
    Node *_next;
    NSMutableArray *linkList;
}
@property (readwrite)NSInteger currentValue;
@property (retain)Node *next;

-(void)insert:(NSInteger)insertval;
-(void)print;
-(void)search:(NSInteger)number;
-(NSMutableArray*)readFromFile;

@end
