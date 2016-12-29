//
//  Patient.h
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Ward.h"
@interface Patient :Ward
{
    int pid;
    NSString *pname;
    int page;
    int pmob;
    NSMutableDictionary *pdict;
    NSMutableArray *parray;
}
-(int)getPatient;
-(void)setPatient;

@end
