//
//  LinkedList.h
//  OrderedList
//
//  Created by BridgeLabz Solutions LLP on 19/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderList : NSObject
{
    NSArray *list;
    NSMutableArray *linkList;
}
-(void)readFromFile;
-(void)Search:(int)number;
-(void)insert:(NSString*)num andPos:(int)position;
-(void)pop:(NSString*)num andPos:(int)position;
-(void)display;
-(void)writefile;
@end
