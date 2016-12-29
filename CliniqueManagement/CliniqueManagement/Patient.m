//
//  Patient.m
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@implementation Patient
int pid=0;
char name[20];
-(int)getPatient{
    printf("\nEnter Patient Name:");
    scanf("%s",name);
    printf("\nEnter Patient Age:");
    scanf("%d",&page);
    printf("\nEnter Patient Mobile No:");
    scanf("%d",&pmob);
    NSMutableArray *parray;
    
    pname=[NSString stringWithFormat:@"%s",name];
    pid++;
    [parray addObject:[NSString stringWithFormat:@"%d",pid]];
    [parray addObject:pname];
    [parray addObject:[NSString stringWithFormat:@"%d",page]];
    [parray addObject:[NSString stringWithFormat:@"%d",pmob]];
    [pdict setValue:parray forKey:[NSString stringWithFormat:@"%d",pid]];
    [self setWard:pid];
    return pid;
    
}
-(void)setPatient{
    printf("\nP-NAME:%s",name);
    printf("\nP-AGE:%d",page);
    printf("\nP-MOB:%d",pmob);
}

@end
