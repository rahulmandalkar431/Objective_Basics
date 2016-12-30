//
//  JobOvershoot.h
//  JobScheduling
//
//  Created by BridgeLabz Solutions LLP on 30/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
#define maxi 5
@interface Job1 : NSObject
{
    int  T[maxi],D[maxi],M[maxi];
    int start[maxi];
    int finish[maxi];
    int late[maxi];
   
}
-(void)readFromFile;
-(void)schedule;
-(void)display;

@end
