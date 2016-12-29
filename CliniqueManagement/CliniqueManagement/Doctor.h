//
//  Doctor.h
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
@interface Doctor : NSObject
{
    int did;
    NSString *dname;
    NSString *special;
    NSString *available;
}
-(void)getDoctor;
-(void)setDoctor;

@end
