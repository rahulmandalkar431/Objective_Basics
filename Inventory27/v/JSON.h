//
//  JSON.h
//  v
//
//  Created by BridgeLabz Solutions LLP on 25/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSON : NSObject
{
    NSDictionary *someDictionary;
    NSArray *rice;
    NSArray *pulse;
    NSArray *wheat;
    NSDictionary *outputrice;
    NSDictionary *outputpulse;
    NSDictionary *outputwheat;
    NSArray *writearray;
    
}
-(void)getData;
-(int)calculateRice;
-(int)calculatePulse;
-(int)calculateWheat;
-(void)writetojson;
@end
