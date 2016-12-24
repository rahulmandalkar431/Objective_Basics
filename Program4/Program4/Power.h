//
//  Power.h
//  Program4
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Power:NSObject
{
    int power;
    int prang;
    
}
-(void)getPower:(int)powerrang;
-(int)calculate;

@end
