//
//  TestOperation.h
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "TestOperation.h"
@interface Treatment : NSObject
{
    int pid;
    int did;
    BOOL flag;
    
}
-(void)opAppoint;
-(void)testAppoint;
-(void)docAppoint;
-(void)getTest;
-(void)getOperation;

@end

