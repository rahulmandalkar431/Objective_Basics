//
//  Harmonic.m
//  Program5
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Harmonic.h"

@implementation Harmonic

-(void)getHrang:(int)hrang;
{
    N=hrang;
}
-(void)calculate
{
    int i;
    //float num1=0.00000;
    float num2=0.00000;
    NSLog(@"Harmonic series::\n");
    for(i=0;i<N;i++)
    {
        // num1=(float)((float)1/((float)i+1));
        num2+=(float)((float)1/((float)i+1));
        NSLog(@"H%d in %d >>>:%.5f",i+1,i+1,num2);
    }
    
}

@end
