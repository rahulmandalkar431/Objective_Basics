//
//  Ward.m
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ward.h"

@implementation Ward

-(void)setWard:(int)patientid{
    
    wpid=patientid;
    printf("\nAllot Ward No:");
    scanf("%d",&wardno);
    printf("\nAllot Bed No:");
    scanf("%d",&bedno);
    state=true;
    
    
}
-(void)deleteward{
    wpid=false;
    wardno=false;
    bedno=false;
    state=false;
}

-(void)wardstatus:(int)pid{
    
    
}
-(void)name{
    
}

@end
