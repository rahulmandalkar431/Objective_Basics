//
//  Register.m
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Register.h"
#import "Patient.h"

@implementation Register
int patientid;
-(void)pregister{
    
    id ob=[Patient alloc];
    patientid=[ob getPatient];
    
    printf("\nPatient with ID %d has been registered..",patientid);
}



@end
