//
//  Bill.h
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 28/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
@interface Bill : NSObject
{
    int pid;
    int amt;
   
}
-(void)addtestcharge;
-(void)addoppcharge;
-(void)addtappointcharge;
-(void)addwardcharge;


@end
