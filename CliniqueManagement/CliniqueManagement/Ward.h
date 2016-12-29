//
//  Ward.h
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ward :NSObject
{
    int wardno;
    int wpid;
    int bedno;
    BOOL state;
    
}
-(void)deleteward;
-(void)setWard:(int)patientid;
-(void)wardstatus:(int)pid;
-(void)name;

@end
