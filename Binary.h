//
//  Binary.h
//  BinarySearch
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import<Foundation/Foundation.h>


@interface BinarySearch :NSObject
{
    int data[10];
    int location;
    
}
-(void)getArray:(int[])number;
-(void)display:(int[])number;
-(void)sort;
-(int)search:(int)item;
-(void)result:(int)index;

@end

